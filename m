Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 266383E00EF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Aug 2021 14:13:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EB4440696;
	Wed,  4 Aug 2021 12:13:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NT5PR2-LUiXC; Wed,  4 Aug 2021 12:13:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1F78404BB;
	Wed,  4 Aug 2021 12:13:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6C301BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 12:13:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3892605BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 12:13:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CNWuyQL37ltY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Aug 2021 12:13:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 14BB460597
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 12:13:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E3C2E60F01;
 Wed,  4 Aug 2021 12:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628079217;
 bh=+abZRqPAkqbMRRUQlBXDt7s4Bc798gUGA+DOgMeFd4M=;
 h=From:To:Cc:Subject:Date:From;
 b=asQHSqST0SScbMiOwDPFEI0MDFRzkwjsOLC9GZ4mdIM6Fx9cCPa4traqC7q+jwF4g
 RA6pA6wHjVXO+iWTbMeftNIDjM9xfnE90hm5Kx9wAiILhMD7w9tTR4GcLFf9DRpDMu
 RJNI0T2bCs7061pe/k6Gw4ADuDElDmLRg9fH2dG1CFVRUtdOa+ylYz3nZlhqHi3PYx
 4k1pxsy6Az3BVxLststbh9qIQeljkx8oWnB8Ehq53E9YhLjgWgXQVca8WBv7pe7qna
 vrbAHlatm49iKJEkU1J0fnHxyTWtIMh2+6XfURtTeCQ/Qian0Ej9+bFxmQjRwJIAF4
 54aJrWIhQ3L6A==
From: Arnd Bergmann <arnd@kernel.org>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Date: Wed,  4 Aug 2021 13:57:04 +0200
Message-Id: <20210804121318.337276-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3] ethernet: fix PTP_1588_CLOCK
 dependencies
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Leon Romanovsky <leon@kernel.org>,
 Jose Abreu <joabreu@synopsys.com>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <simon.horman@netronome.com>,
 Martin Habets <habetsm.xilinx@gmail.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ido Schimmel <idosch@nvidia.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Jiri Pirko <jiri@nvidia.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 drivers@pensando.io, Salil Mehta <salil.mehta@huawei.com>,
 Vladimir Oltean <olteanv@gmail.com>, netdev@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Tariq Toukan <tariqt@nvidia.com>,
 UNGLinuxDriver@microchip.com, Edward Cree <ecree.xilinx@gmail.com>,
 Sergei Shtylyov <sergei.shtylyov@gmail.com>, Yangbo Lu <yangbo.lu@nxp.com>,
 Shannon Nelson <snelson@pensando.io>, Saeed Mahameed <saeedm@nvidia.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arnd Bergmann <arnd@arndb.de>

The 'imply' keyword does not do what most people think it does, it only
politely asks Kconfig to turn on another symbol, but does not prevent
it from being disabled manually or built as a loadable module when the
user is built-in. In the ICE driver, the latter now causes a link failure:

aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function `ice_eth_ioctl':
ice_main.c:(.text+0x13b0): undefined reference to `ice_ptp_get_ts_config'
ice_main.c:(.text+0x13b0): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `ice_ptp_get_ts_config'
aarch64-linux-ld: ice_main.c:(.text+0x13bc): undefined reference to `ice_ptp_set_ts_config'
ice_main.c:(.text+0x13bc): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `ice_ptp_set_ts_config'
aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function `ice_prepare_for_reset':
ice_main.c:(.text+0x31fc): undefined reference to `ice_ptp_release'
ice_main.c:(.text+0x31fc): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `ice_ptp_release'
aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function `ice_rebuild':

This is a recurring problem in many drivers, and we have discussed
it several times befores, without reaching a consensus. I'm providing
a link to the previous email thread for reference, which discusses
some related problems.

To solve the dependency issue better than the 'imply' keyword, introduce a
separate Kconfig symbol "CONFIG_PTP_1588_CLOCK_OPTIONAL" that any driver
can depend on if it is able to use PTP support when available, but works
fine without it. Whenever CONFIG_PTP_1588_CLOCK=m, those drivers are
then prevented from being built-in, the same way as with a 'depends on
PTP_1588_CLOCK || !PTP_1588_CLOCK' dependency that does the same trick,
but that can be rather confusing when you first see it.

Since this should cover the dependencies correctly, the IS_REACHABLE()
hack in the header is no longer needed now, and can be turned back
into a normal IS_ENABLED() check. Any driver that gets the dependency
wrong will now cause a link time failure rather than being unable to use
PTP support when that is in a loadable module.

However, the two recently added ptp_get_vclocks_index() and
ptp_convert_timestamp() interfaces are only called from builtin code with
ethtool and socket timestamps, so keep the current behavior by stubbing
those out completely when PTP is in a loadable module. This should be
addressed properly in a follow-up.

As Richard suggested, we may want to actually turn PTP support into a
'bool' option later on, preventing it from being a loadable module
altogether, which would be one way to solve the problem with the ethtool
interface.

Fixes: 06c16d89d2cb ("ice: register 1588 PTP clock device object for E810 devices")
Link: https://lore.kernel.org/netdev/CAK8P3a06enZOf=XyZ+zcAwBczv41UuCTz+=0FMf2gBz1_cOnZQ@mail.gmail.com/
Link: https://lore.kernel.org/netdev/CAK8P3a3=eOxE-K25754+fB_-i_0BZzf9a9RfPTX3ppSwu9WZXw@mail.gmail.com/
Link: https://lore.kernel.org/netdev/20210726084540.3282344-1-arnd@kernel.org/
Cc: Richard Cochran <richardcochran@gmail.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
Changes in v3:
- rewrite to introduce a new PTP_1588_CLOCK_OPTIONAL symbol
- use it for all driver, not just Intel's
- change IS_REACHABLE() to IS_ENABLED() in the header

Changes in v2:
- include a missing patch hunk
- link to a previous discussion with Richard Cochran
---
 drivers/net/dsa/mv88e6xxx/Kconfig             |  1 +
 drivers/net/dsa/ocelot/Kconfig                |  2 +
 drivers/net/ethernet/amd/Kconfig              |  2 +-
 drivers/net/ethernet/broadcom/Kconfig         |  6 +--
 drivers/net/ethernet/cadence/Kconfig          |  1 +
 drivers/net/ethernet/cavium/Kconfig           |  4 +-
 drivers/net/ethernet/freescale/Kconfig        |  2 +-
 drivers/net/ethernet/hisilicon/Kconfig        |  2 +-
 drivers/net/ethernet/intel/Kconfig            | 14 +++---
 drivers/net/ethernet/mellanox/mlx4/Kconfig    |  2 +-
 .../net/ethernet/mellanox/mlx5/core/Kconfig   |  2 +-
 drivers/net/ethernet/mellanox/mlxsw/Kconfig   |  2 +-
 drivers/net/ethernet/mscc/Kconfig             |  2 +
 drivers/net/ethernet/oki-semi/pch_gbe/Kconfig |  1 +
 drivers/net/ethernet/pensando/Kconfig         |  2 +-
 drivers/net/ethernet/qlogic/Kconfig           |  2 +-
 drivers/net/ethernet/renesas/Kconfig          |  2 +-
 drivers/net/ethernet/samsung/Kconfig          |  2 +-
 drivers/net/ethernet/sfc/Kconfig              |  2 +-
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |  2 +-
 drivers/net/phy/Kconfig                       |  2 +
 drivers/ptp/Kconfig                           | 15 +++++-
 drivers/ptp/ptp_vclock.c                      |  2 +
 include/linux/ptp_clock_kernel.h              | 48 +++++++++++--------
 24 files changed, 77 insertions(+), 45 deletions(-)

diff --git a/drivers/net/dsa/mv88e6xxx/Kconfig b/drivers/net/dsa/mv88e6xxx/Kconfig
index 634a48e6616b..7a2445a34eb7 100644
--- a/drivers/net/dsa/mv88e6xxx/Kconfig
+++ b/drivers/net/dsa/mv88e6xxx/Kconfig
@@ -2,6 +2,7 @@
 config NET_DSA_MV88E6XXX
 	tristate "Marvell 88E6xxx Ethernet switch fabric support"
 	depends on NET_DSA
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select IRQ_DOMAIN
 	select NET_DSA_TAG_EDSA
 	select NET_DSA_TAG_DSA
diff --git a/drivers/net/dsa/ocelot/Kconfig b/drivers/net/dsa/ocelot/Kconfig
index 932b6b6fe817..9948544ba1c4 100644
--- a/drivers/net/dsa/ocelot/Kconfig
+++ b/drivers/net/dsa/ocelot/Kconfig
@@ -5,6 +5,7 @@ config NET_DSA_MSCC_FELIX
 	depends on NET_VENDOR_MICROSEMI
 	depends on NET_VENDOR_FREESCALE
 	depends on HAS_IOMEM
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select MSCC_OCELOT_SWITCH_LIB
 	select NET_DSA_TAG_OCELOT_8021Q
 	select NET_DSA_TAG_OCELOT
@@ -19,6 +20,7 @@ config NET_DSA_MSCC_SEVILLE
 	depends on NET_DSA
 	depends on NET_VENDOR_MICROSEMI
 	depends on HAS_IOMEM
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select MSCC_OCELOT_SWITCH_LIB
 	select NET_DSA_TAG_OCELOT_8021Q
 	select NET_DSA_TAG_OCELOT
diff --git a/drivers/net/ethernet/amd/Kconfig b/drivers/net/ethernet/amd/Kconfig
index c6a3abec86f5..4786f0504691 100644
--- a/drivers/net/ethernet/amd/Kconfig
+++ b/drivers/net/ethernet/amd/Kconfig
@@ -170,11 +170,11 @@ config AMD_XGBE
 	tristate "AMD 10GbE Ethernet driver"
 	depends on ((OF_NET && OF_ADDRESS) || ACPI || PCI) && HAS_IOMEM
 	depends on X86 || ARM64 || COMPILE_TEST
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select BITREVERSE
 	select CRC32
 	select PHYLIB
 	select AMD_XGBE_HAVE_ECC if X86
-	imply PTP_1588_CLOCK
 	help
 	  This driver supports the AMD 10GbE Ethernet device found on an
 	  AMD SoC.
diff --git a/drivers/net/ethernet/broadcom/Kconfig b/drivers/net/ethernet/broadcom/Kconfig
index 1a02ca600b71..56e0fb07aec7 100644
--- a/drivers/net/ethernet/broadcom/Kconfig
+++ b/drivers/net/ethernet/broadcom/Kconfig
@@ -122,8 +122,8 @@ config SB1250_MAC
 config TIGON3
 	tristate "Broadcom Tigon3 support"
 	depends on PCI
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select PHYLIB
-	imply PTP_1588_CLOCK
 	help
 	  This driver supports Broadcom Tigon3 based gigabit Ethernet cards.
 
@@ -140,7 +140,7 @@ config TIGON3_HWMON
 config BNX2X
 	tristate "Broadcom NetXtremeII 10Gb support"
 	depends on PCI
-	imply PTP_1588_CLOCK
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select FW_LOADER
 	select ZLIB_INFLATE
 	select LIBCRC32C
@@ -206,7 +206,7 @@ config SYSTEMPORT
 config BNXT
 	tristate "Broadcom NetXtreme-C/E support"
 	depends on PCI
-	imply PTP_1588_CLOCK
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select FW_LOADER
 	select LIBCRC32C
 	select NET_DEVLINK
diff --git a/drivers/net/ethernet/cadence/Kconfig b/drivers/net/ethernet/cadence/Kconfig
index e432a68ac520..5b2a461dfd28 100644
--- a/drivers/net/ethernet/cadence/Kconfig
+++ b/drivers/net/ethernet/cadence/Kconfig
@@ -22,6 +22,7 @@ if NET_VENDOR_CADENCE
 config MACB
 	tristate "Cadence MACB/GEM support"
 	depends on HAS_DMA && COMMON_CLK
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select PHYLINK
 	select CRC32
 	help
diff --git a/drivers/net/ethernet/cavium/Kconfig b/drivers/net/ethernet/cavium/Kconfig
index 4875cdae622e..1c76c95b0b27 100644
--- a/drivers/net/ethernet/cavium/Kconfig
+++ b/drivers/net/ethernet/cavium/Kconfig
@@ -66,7 +66,7 @@ config LIQUIDIO
 	tristate "Cavium LiquidIO support"
 	depends on 64BIT && PCI
 	depends on PCI
-	imply PTP_1588_CLOCK
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select FW_LOADER
 	select LIBCRC32C
 	select NET_DEVLINK
@@ -91,7 +91,7 @@ config OCTEON_MGMT_ETHERNET
 config LIQUIDIO_VF
 	tristate "Cavium LiquidIO VF support"
 	depends on 64BIT && PCI_MSI
-	imply PTP_1588_CLOCK
+	depends on PTP_1588_CLOCK_OPTIONAL
 	help
 	  This driver supports Cavium LiquidIO Intelligent Server Adapter
 	  based on CN23XX chips.
diff --git a/drivers/net/ethernet/freescale/Kconfig b/drivers/net/ethernet/freescale/Kconfig
index 2d1abdd58fab..e04e1c5cb013 100644
--- a/drivers/net/ethernet/freescale/Kconfig
+++ b/drivers/net/ethernet/freescale/Kconfig
@@ -25,10 +25,10 @@ config FEC
 	depends on (M523x || M527x || M5272 || M528x || M520x || M532x || \
 		   ARCH_MXC || SOC_IMX28 || COMPILE_TEST)
 	default ARCH_MXC || SOC_IMX28 if ARM
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select CRC32
 	select PHYLIB
 	imply NET_SELFTESTS
-	imply PTP_1588_CLOCK
 	help
 	  Say Y here if you want to use the built-in 10/100 Fast ethernet
 	  controller on some Motorola ColdFire and Freescale i.MX processors.
diff --git a/drivers/net/ethernet/hisilicon/Kconfig b/drivers/net/ethernet/hisilicon/Kconfig
index 094e4a37a295..87ab6044ef65 100644
--- a/drivers/net/ethernet/hisilicon/Kconfig
+++ b/drivers/net/ethernet/hisilicon/Kconfig
@@ -103,7 +103,7 @@ config HNS3_HCLGE
 	tristate "Hisilicon HNS3 HCLGE Acceleration Engine & Compatibility Layer Support"
 	default m
 	depends on PCI_MSI
-	imply PTP_1588_CLOCK
+	depends on PTP_1588_CLOCK_OPTIONAL
 	help
 	  This selects the HNS3_HCLGE network acceleration engine & its hardware
 	  compatibility layer. The engine would be used in Hisilicon hip08 family of
diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 82744a7501c7..9c1d0b715748 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -58,8 +58,8 @@ config E1000
 config E1000E
 	tristate "Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support"
 	depends on PCI && (!SPARC32 || BROKEN)
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select CRC32
-	imply PTP_1588_CLOCK
 	help
 	  This driver supports the PCI-Express Intel(R) PRO/1000 gigabit
 	  ethernet family of adapters. For PCI or PCI-X e1000 adapters,
@@ -87,8 +87,8 @@ config E1000E_HWTS
 config IGB
 	tristate "Intel(R) 82575/82576 PCI-Express Gigabit Ethernet support"
 	depends on PCI
-	imply PTP_1588_CLOCK
-	select I2C
+	depends on PTP_1588_CLOCK_OPTIONAL
+	depends on I2C
 	select I2C_ALGOBIT
 	help
 	  This driver supports Intel(R) 82575/82576 gigabit ethernet family of
@@ -159,9 +159,9 @@ config IXGB
 config IXGBE
 	tristate "Intel(R) 10GbE PCI Express adapters support"
 	depends on PCI
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select MDIO
 	select PHYLIB
-	imply PTP_1588_CLOCK
 	help
 	  This driver supports Intel(R) 10GbE PCI Express family of
 	  adapters.  For more information on how to identify your adapter, go
@@ -239,7 +239,7 @@ config IXGBEVF_IPSEC
 
 config I40E
 	tristate "Intel(R) Ethernet Controller XL710 Family support"
-	imply PTP_1588_CLOCK
+	depends on PTP_1588_CLOCK_OPTIONAL
 	depends on PCI
 	select AUXILIARY_BUS
 	help
@@ -295,11 +295,11 @@ config ICE
 	tristate "Intel(R) Ethernet Connection E800 Series Support"
 	default n
 	depends on PCI_MSI
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select AUXILIARY_BUS
 	select DIMLIB
 	select NET_DEVLINK
 	select PLDMFW
-	imply PTP_1588_CLOCK
 	help
 	  This driver supports Intel(R) Ethernet Connection E800 Series of
 	  devices.  For more information on how to identify your adapter, go
@@ -317,7 +317,7 @@ config FM10K
 	tristate "Intel(R) FM10000 Ethernet Switch Host Interface Support"
 	default n
 	depends on PCI_MSI
-	imply PTP_1588_CLOCK
+	depends on PTP_1588_CLOCK_OPTIONAL
 	help
 	  This driver supports Intel(R) FM10000 Ethernet Switch Host
 	  Interface.  For more information on how to identify your adapter,
diff --git a/drivers/net/ethernet/mellanox/mlx4/Kconfig b/drivers/net/ethernet/mellanox/mlx4/Kconfig
index 400e611ba041..1b4b1f642317 100644
--- a/drivers/net/ethernet/mellanox/mlx4/Kconfig
+++ b/drivers/net/ethernet/mellanox/mlx4/Kconfig
@@ -6,8 +6,8 @@
 config MLX4_EN
 	tristate "Mellanox Technologies 1/10/40Gbit Ethernet support"
 	depends on PCI && NETDEVICES && ETHERNET && INET
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select MLX4_CORE
-	imply PTP_1588_CLOCK
 	help
 	  This driver supports Mellanox Technologies ConnectX Ethernet
 	  devices.
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/Kconfig b/drivers/net/ethernet/mellanox/mlx5/core/Kconfig
index e1a5a79e27c7..92056452a9e3 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/Kconfig
+++ b/drivers/net/ethernet/mellanox/mlx5/core/Kconfig
@@ -10,7 +10,7 @@ config MLX5_CORE
 	select NET_DEVLINK
 	depends on VXLAN || !VXLAN
 	depends on MLXFW || !MLXFW
-	depends on PTP_1588_CLOCK || !PTP_1588_CLOCK
+	depends on PTP_1588_CLOCK_OPTIONAL
 	depends on PCI_HYPERV_INTERFACE || !PCI_HYPERV_INTERFACE
 	help
 	  Core driver for low level functionality of the ConnectX-4 and
diff --git a/drivers/net/ethernet/mellanox/mlxsw/Kconfig b/drivers/net/ethernet/mellanox/mlxsw/Kconfig
index 12871c8dc7c1..d1ae248e125c 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/Kconfig
+++ b/drivers/net/ethernet/mellanox/mlxsw/Kconfig
@@ -58,10 +58,10 @@ config MLXSW_SPECTRUM
 	depends on NET_IPGRE || NET_IPGRE=n
 	depends on IPV6_GRE || IPV6_GRE=n
 	depends on VXLAN || VXLAN=n
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select GENERIC_ALLOCATOR
 	select PARMAN
 	select OBJAGG
-	imply PTP_1588_CLOCK
 	select NET_PTP_CLASSIFY if PTP_1588_CLOCK
 	default m
 	help
diff --git a/drivers/net/ethernet/mscc/Kconfig b/drivers/net/ethernet/mscc/Kconfig
index 2d3157e4d081..b07912434560 100644
--- a/drivers/net/ethernet/mscc/Kconfig
+++ b/drivers/net/ethernet/mscc/Kconfig
@@ -13,6 +13,7 @@ if NET_VENDOR_MICROSEMI
 
 # Users should depend on NET_SWITCHDEV, HAS_IOMEM, BRIDGE
 config MSCC_OCELOT_SWITCH_LIB
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select NET_DEVLINK
 	select REGMAP_MMIO
 	select PACKING
@@ -24,6 +25,7 @@ config MSCC_OCELOT_SWITCH_LIB
 
 config MSCC_OCELOT_SWITCH
 	tristate "Ocelot switch driver"
+	depends on PTP_1588_CLOCK_OPTIONAL
 	depends on BRIDGE || BRIDGE=n
 	depends on NET_SWITCHDEV
 	depends on HAS_IOMEM
diff --git a/drivers/net/ethernet/oki-semi/pch_gbe/Kconfig b/drivers/net/ethernet/oki-semi/pch_gbe/Kconfig
index af84f72bf08e..4e18b64dceb9 100644
--- a/drivers/net/ethernet/oki-semi/pch_gbe/Kconfig
+++ b/drivers/net/ethernet/oki-semi/pch_gbe/Kconfig
@@ -6,6 +6,7 @@
 config PCH_GBE
 	tristate "OKI SEMICONDUCTOR IOH(ML7223/ML7831) GbE"
 	depends on PCI && (X86_32 || COMPILE_TEST)
+	depends on PTP_1588_CLOCK
 	select MII
 	select PTP_1588_CLOCK_PCH
 	select NET_PTP_CLASSIFY
diff --git a/drivers/net/ethernet/pensando/Kconfig b/drivers/net/ethernet/pensando/Kconfig
index 202973a82712..3f7519e435b8 100644
--- a/drivers/net/ethernet/pensando/Kconfig
+++ b/drivers/net/ethernet/pensando/Kconfig
@@ -20,7 +20,7 @@ if NET_VENDOR_PENSANDO
 config IONIC
 	tristate "Pensando Ethernet IONIC Support"
 	depends on 64BIT && PCI
-	depends on PTP_1588_CLOCK || !PTP_1588_CLOCK
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select NET_DEVLINK
 	select DIMLIB
 	help
diff --git a/drivers/net/ethernet/qlogic/Kconfig b/drivers/net/ethernet/qlogic/Kconfig
index 98f430905ffa..1203353238e5 100644
--- a/drivers/net/ethernet/qlogic/Kconfig
+++ b/drivers/net/ethernet/qlogic/Kconfig
@@ -99,7 +99,7 @@ config QED_SRIOV
 config QEDE
 	tristate "QLogic QED 25/40/100Gb Ethernet NIC"
 	depends on QED
-	imply PTP_1588_CLOCK
+	depends on PTP_1588_CLOCK_OPTIONAL
 	help
 	  This enables the support for Marvell FastLinQ adapters family,
 	  ethernet driver.
diff --git a/drivers/net/ethernet/renesas/Kconfig b/drivers/net/ethernet/renesas/Kconfig
index 5a2a4af31812..8008b2f45934 100644
--- a/drivers/net/ethernet/renesas/Kconfig
+++ b/drivers/net/ethernet/renesas/Kconfig
@@ -32,11 +32,11 @@ config SH_ETH
 config RAVB
 	tristate "Renesas Ethernet AVB support"
 	depends on ARCH_RENESAS || COMPILE_TEST
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select CRC32
 	select MII
 	select MDIO_BITBANG
 	select PHYLIB
-	imply PTP_1588_CLOCK
 	help
 	  Renesas Ethernet AVB device driver.
 	  This driver supports the following SoCs:
diff --git a/drivers/net/ethernet/samsung/Kconfig b/drivers/net/ethernet/samsung/Kconfig
index 0582e110b1c0..2a6c2658d284 100644
--- a/drivers/net/ethernet/samsung/Kconfig
+++ b/drivers/net/ethernet/samsung/Kconfig
@@ -20,9 +20,9 @@ if NET_VENDOR_SAMSUNG
 config SXGBE_ETH
 	tristate "Samsung 10G/2.5G/1G SXGBE Ethernet driver"
 	depends on HAS_IOMEM && HAS_DMA
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select PHYLIB
 	select CRC32
-	imply PTP_1588_CLOCK
 	help
 	  This is the driver for the SXGBE 10G Ethernet IP block found on
 	  Samsung platforms.
diff --git a/drivers/net/ethernet/sfc/Kconfig b/drivers/net/ethernet/sfc/Kconfig
index 5e37c8313725..97ce64079855 100644
--- a/drivers/net/ethernet/sfc/Kconfig
+++ b/drivers/net/ethernet/sfc/Kconfig
@@ -19,9 +19,9 @@ if NET_VENDOR_SOLARFLARE
 config SFC
 	tristate "Solarflare SFC9000/SFC9100/EF100-family support"
 	depends on PCI
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select MDIO
 	select CRC32
-	imply PTP_1588_CLOCK
 	help
 	  This driver supports 10/40-gigabit Ethernet cards based on
 	  the Solarflare SFC9000-family and SFC9100-family controllers.
diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
index ac3c248d4f9b..929cfc22cd0c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
+++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
@@ -2,12 +2,12 @@
 config STMMAC_ETH
 	tristate "STMicroelectronics Multi-Gigabit Ethernet driver"
 	depends on HAS_IOMEM && HAS_DMA
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select MII
 	select PCS_XPCS
 	select PAGE_POOL
 	select PHYLINK
 	select CRC32
-	imply PTP_1588_CLOCK
 	select RESET_CONTROLLER
 	help
 	  This is the driver for the Ethernet IPs built around a
diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 7564ae0c1997..902495afcb38 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -236,6 +236,7 @@ config MICROCHIP_T1_PHY
 config MICROSEMI_PHY
 	tristate "Microsemi PHYs"
 	depends on MACSEC || MACSEC=n
+	depends on PTP_1588_CLOCK_OPTIONAL || !NETWORK_PHY_TIMESTAMPING
 	select CRYPTO_LIB_AES if MACSEC
 	help
 	  Currently supports VSC8514, VSC8530, VSC8531, VSC8540 and VSC8541 PHYs
@@ -253,6 +254,7 @@ config NATIONAL_PHY
 
 config NXP_C45_TJA11XX_PHY
 	tristate "NXP C45 TJA11XX PHYs"
+	depends on PTP_1588_CLOCK_OPTIONAL
 	help
 	  Enable support for NXP C45 TJA11XX PHYs.
 	  Currently supports only the TJA1103 PHY.
diff --git a/drivers/ptp/Kconfig b/drivers/ptp/Kconfig
index 8c20e524e9ad..9eaad06bae89 100644
--- a/drivers/ptp/Kconfig
+++ b/drivers/ptp/Kconfig
@@ -8,6 +8,7 @@ menu "PTP clock support"
 config PTP_1588_CLOCK
 	tristate "PTP clock support"
 	depends on NET && POSIX_TIMERS
+	default ETHERNET
 	select PPS
 	select NET_PTP_CLASSIFY
 	help
@@ -26,6 +27,18 @@ config PTP_1588_CLOCK
 	  To compile this driver as a module, choose M here: the module
 	  will be called ptp.
 
+config PTP_1588_CLOCK_OPTIONAL
+	tristate
+	default y if PTP_1588_CLOCK=n
+	default PTP_1588_CLOCK
+	help
+	  Drivers that can optionally use the PTP_1588_CLOCK framework
+	  should depend on this symbol to prevent them from being built
+	  into vmlinux while the PTP support itself is in a loadable
+	  module.
+	  If PTP support is disabled, this dependency will still be
+	  met, and drivers refer to dummy helpers.
+
 config PTP_1588_CLOCK_DTE
 	tristate "Broadcom DTE as PTP clock"
 	depends on PTP_1588_CLOCK
@@ -91,7 +104,7 @@ config PTP_1588_CLOCK_PCH
 	tristate "Intel PCH EG20T as PTP clock"
 	depends on X86_32 || COMPILE_TEST
 	depends on HAS_IOMEM && NET
-	imply PTP_1588_CLOCK
+	depends on PTP_1588_CLOCK
 	help
 	  This driver adds support for using the PCH EG20T as a PTP
 	  clock. The hardware supports time stamping of PTP packets
diff --git a/drivers/ptp/ptp_vclock.c b/drivers/ptp/ptp_vclock.c
index e0f87c57749a..baee0379482b 100644
--- a/drivers/ptp/ptp_vclock.c
+++ b/drivers/ptp/ptp_vclock.c
@@ -149,6 +149,7 @@ void ptp_vclock_unregister(struct ptp_vclock *vclock)
 	kfree(vclock);
 }
 
+#if IS_BUILTIN(CONFIG_PTP_1588_CLOCK)
 int ptp_get_vclocks_index(int pclock_index, int **vclock_index)
 {
 	char name[PTP_CLOCK_NAME_LEN] = "";
@@ -217,3 +218,4 @@ void ptp_convert_timestamp(struct skb_shared_hwtstamps *hwtstamps,
 	hwtstamps->hwtstamp = ns_to_ktime(ns);
 }
 EXPORT_SYMBOL(ptp_convert_timestamp);
+#endif
diff --git a/include/linux/ptp_clock_kernel.h b/include/linux/ptp_clock_kernel.h
index 71fac9237725..2e5565067355 100644
--- a/include/linux/ptp_clock_kernel.h
+++ b/include/linux/ptp_clock_kernel.h
@@ -215,7 +215,7 @@ static inline long scaled_ppm_to_ppb(long ppm)
 	return (long)ppb;
 }
 
-#if IS_REACHABLE(CONFIG_PTP_1588_CLOCK)
+#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 
 /**
  * ptp_clock_register() - register a PTP hardware clock driver
@@ -307,6 +307,33 @@ int ptp_schedule_worker(struct ptp_clock *ptp, unsigned long delay);
  */
 void ptp_cancel_worker_sync(struct ptp_clock *ptp);
 
+#else
+static inline struct ptp_clock *ptp_clock_register(struct ptp_clock_info *info,
+						   struct device *parent)
+{ return NULL; }
+static inline int ptp_clock_unregister(struct ptp_clock *ptp)
+{ return 0; }
+static inline void ptp_clock_event(struct ptp_clock *ptp,
+				   struct ptp_clock_event *event)
+{ }
+static inline int ptp_clock_index(struct ptp_clock *ptp)
+{ return -1; }
+static inline int ptp_find_pin(struct ptp_clock *ptp,
+			       enum ptp_pin_function func, unsigned int chan)
+{ return -1; }
+static inline int ptp_schedule_worker(struct ptp_clock *ptp,
+				      unsigned long delay)
+{ return -EOPNOTSUPP; }
+static inline void ptp_cancel_worker_sync(struct ptp_clock *ptp)
+{ }
+#endif
+
+#if IS_BUILTIN(CONFIG_PTP_1588_CLOCK)
+/*
+ * These are called by the network core, and don't work if PTP is in
+ * a loadable module.
+ */
+
 /**
  * ptp_get_vclocks_index() - get all vclocks index on pclock, and
  *                           caller is responsible to free memory
@@ -327,26 +354,7 @@ int ptp_get_vclocks_index(int pclock_index, int **vclock_index);
  */
 void ptp_convert_timestamp(struct skb_shared_hwtstamps *hwtstamps,
 			   int vclock_index);
-
 #else
-static inline struct ptp_clock *ptp_clock_register(struct ptp_clock_info *info,
-						   struct device *parent)
-{ return NULL; }
-static inline int ptp_clock_unregister(struct ptp_clock *ptp)
-{ return 0; }
-static inline void ptp_clock_event(struct ptp_clock *ptp,
-				   struct ptp_clock_event *event)
-{ }
-static inline int ptp_clock_index(struct ptp_clock *ptp)
-{ return -1; }
-static inline int ptp_find_pin(struct ptp_clock *ptp,
-			       enum ptp_pin_function func, unsigned int chan)
-{ return -1; }
-static inline int ptp_schedule_worker(struct ptp_clock *ptp,
-				      unsigned long delay)
-{ return -EOPNOTSUPP; }
-static inline void ptp_cancel_worker_sync(struct ptp_clock *ptp)
-{ }
 static inline int ptp_get_vclocks_index(int pclock_index, int **vclock_index)
 { return 0; }
 static inline void ptp_convert_timestamp(struct skb_shared_hwtstamps *hwtstamps,
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
