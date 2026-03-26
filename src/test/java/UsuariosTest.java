import com.intuit.karate.junit5.Karate;

class UsuariosTest {
    @Karate.Test
    Karate testUsuarios() {
        return Karate.run("features/usuarios-put.feature",
                         "features/usuarios-post.feature",
                         "features/usuarios-get.feature",
                         "features/usuarios-get-by-id.feature",
                         "features/usuarios-delete.feature",
                         "features/acceso-post.feature"
        ).relativeTo(getClass());
    }
}
