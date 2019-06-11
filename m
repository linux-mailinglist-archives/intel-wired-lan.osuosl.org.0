Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F145416A9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2019 23:09:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1D2084DD1;
	Tue, 11 Jun 2019 21:09:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sXz9rewVbApW; Tue, 11 Jun 2019 21:09:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 47DAB85F35;
	Tue, 11 Jun 2019 21:09:08 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 202791BF33F
 for <intel-wired-lan@osuosl.org>; Tue, 11 Jun 2019 21:09:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 199B487D41
 for <intel-wired-lan@osuosl.org>; Tue, 11 Jun 2019 21:09:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id snE9kFjD6AU5 for <intel-wired-lan@osuosl.org>;
 Tue, 11 Jun 2019 21:09:05 +0000 (UTC)
X-Greylist: delayed 00:07:09 by SQLgrey-1.7.6
Received: from forward105p.mail.yandex.net (forward105p.mail.yandex.net
 [77.88.28.108])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F359587D56
 for <intel-wired-lan@osuosl.org>; Tue, 11 Jun 2019 21:09:04 +0000 (UTC)
Received: from mxback10o.mail.yandex.net (mxback10o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::24])
 by forward105p.mail.yandex.net (Yandex) with ESMTP id DEC444D402AF
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2019 00:01:50 +0300 (MSK)
Received: from smtp3o.mail.yandex.net (smtp3o.mail.yandex.net
 [2a02:6b8:0:1a2d::27])
 by mxback10o.mail.yandex.net (nwsmtp/Yandex) with ESMTP id gBfcyfE0Is-1oqSF7T2;
 Wed, 12 Jun 2019 00:01:50 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flussonic.com; s=mail;
 t=1560286910; bh=ScEtiGFK8HgtkjAg87CkNhrrrJA0WXgq7sqLTUlTLZQ=;
 h=To:Subject:From:Date:Message-Id;
 b=HKpSMmVOo7jXMCutzQoQYea5NEMS92JRixzMJQm9VxQeVgOpaqBY7J7rE9GBA4z3q
 pBCnm5908GZhYpOUu5z+A5sT6K+lQVuEO9FsdqqaRZj+fYTu8byEktPjSfCLb7HBQR
 yeLuGNcuGWDAQMDKdDIDC6dAz0dSExhO4hZA5yyY=
Authentication-Results: mxback10o.mail.yandex.net;
 dkim=pass header.i=@flussonic.com
Received: by smtp3o.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 FGvn0smOnA-1nK0hYxR; Wed, 12 Jun 2019 00:01:49 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
From: Max Lapshin <max@flussonic.com>
Mime-Version: 1.0 (Mac OS X Mail 12.1 \(3445.101.1\))
Message-Id: <C0C7FF38-286F-46CA-909D-1A02EFDBBF0C@flussonic.com>
Date: Wed, 12 Jun 2019 00:01:49 +0300
To: intel-wired-lan@osuosl.org
X-Mailer: Apple Mail (2.3445.101.1)
Subject: [Intel-wired-lan] i350 software defined pins sysfs access
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
Content-Type: multipart/mixed; boundary="===============3832054402045192319=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============3832054402045192319==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B96D4C2E-E3A4-495F-85DA-0AD917823FD2"


--Apple-Mail=_B96D4C2E-E3A4-495F-85DA-0AD917823FD2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi.

Intel i350 nic has software defined pins.  I have a custom hardware =
where these pins are connected to
some peripheral and I need to enable/disable them.

Here is patch that enables access to them. I can turn off peripheral =
device by:

echo 0 > /sys/class/net/eth1/device/pin2

and turn on by:

echo 1 > /sys/class/net/eth1/device/pin2

Please, give any corrections and advices if this patch requires any =
changes.
It is made again  =
git://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git =
<git://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git>  =
dev-queue



Subject: [PATCH] i350: Add support for Intel i350 software defined pins

NIC i350 with igb driver has software defined pins.
Allow to access them via sysfs files.
---
 drivers/net/ethernet/intel/igb/igb.h      |  28 +++++
 drivers/net/ethernet/intel/igb/igb_main.c | 127 +++++++++++++++++++++-
 2 files changed, 154 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h =
b/drivers/net/ethernet/intel/igb/igb.h
index ca54e268d157..2453674464fa 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -79,6 +79,20 @@ struct igb_adapter;
 #define IGB_I210_RX_LATENCY_100		2213
 #define IGB_I210_RX_LATENCY_1000	448
=20
+
+/* Software defined pins 0-1 */
+#define IGB_CTRL_SDP0_DATA 0x00040000 /* Value of SW Defineable Pin 0 =
*/
+#define IGB_CTRL_SDP1_DATA 0x00080000 /* Value of SW Defineable Pin 1 =
*/
+#define IGB_CTRL_SDP0_DIR  0x00400000 /* SDP0 Data direction */
+#define IGB_CTRL_SDP1_DIR  0x00800000 /* SDP1 Data direction */
+
+/* Software defined pins 2-3 */
+#define IGB_CTRL_EXT_SDP2_DATA E1000_CTRL_EXT_SDP2_DATA /* Value of SW =
Defineable Pin 2 */
+#define IGB_CTRL_EXT_SDP3_DATA E1000_CTRL_EXT_SDP3_DATA /* Value of SW =
Defineable Pin 3 */
+#define IGB_CTRL_EXT_SDP2_DIR  E1000_CTRL_EXT_SDP2_DIR  /* SDP2 Data =
direction */
+#define IGB_CTRL_EXT_SDP3_DIR  E1000_CTRL_EXT_SDP3_DIR  /* SDP3 Data =
direction */
+
+
 struct vf_data_storage {
 	unsigned char vf_mac_addresses[ETH_ALEN];
 	u16 vf_mc_hashes[IGB_MAX_VF_MC_ENTRIES];
@@ -380,6 +394,16 @@ static inline int igb_desc_unused(struct igb_ring =
*ring)
 	return ring->count + ring->next_to_clean - ring->next_to_use - =
1;
 }
=20
+#define IGB_SDP_COUNT 4
+#define IGB_MAX_SDPS 4
+// Software defined pins
+struct sdp_attr {
+	struct device_attribute dev_attr;
+	u32 pin;
+	struct igb_adapter *adapter;
+	char name[12];
+};
+
 #ifdef CONFIG_IGB_HWMON
=20
 #define IGB_HWMON_TYPE_LOC	0
@@ -568,6 +592,10 @@ struct igb_adapter {
 	} perout[IGB_N_PEROUT];
=20
 	char fw_version[32];
+
+	u32 n_sdp;
+	struct sdp_attr sdp_attrs[IGB_MAX_SDPS];
+
 #ifdef CONFIG_IGB_HWMON
 	struct hwmon_buff *igb_hwmon_buff;
 	bool ets;
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c =
b/drivers/net/ethernet/intel/igb/igb_main.c
index fc925adbd9fa..447417fb4d3f 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -40,7 +40,7 @@
=20
 #define MAJ 5
 #define MIN 6
-#define BUILD 0
+#define BUILD 1
 #define DRV_VERSION __stringify(MAJ) "." __stringify(MIN) "." \
 __stringify(BUILD) "-k"
=20
@@ -2484,6 +2484,129 @@ static int igb_set_features(struct net_device =
*netdev,
 	return 1;
 }
=20
+static u32 igb_sdp_direction_bit(u32 pin)
+{
+        return pin =3D=3D 0 ? IGB_CTRL_SDP0_DIR :
+          pin =3D=3D 1 ? IGB_CTRL_SDP1_DIR :
+          pin =3D=3D 2 ? IGB_CTRL_EXT_SDP2_DIR :
+          pin =3D=3D 3 ? IGB_CTRL_EXT_SDP3_DIR : 0xFFFFFFFF;
+}
+
+static u32 igb_sdp_value_bit(u32 pin)
+{
+        return pin =3D=3D IGB_CTRL_SDP0_DIR ? 18 :
+          pin =3D=3D 1 ? IGB_CTRL_SDP1_DIR :
+          pin =3D=3D 2 ? IGB_CTRL_EXT_SDP2_DIR :
+          pin =3D=3D 3 ? IGB_CTRL_EXT_SDP3_DIR : 0xFFFFFFFF;
+}
+
+static u32 igb_sdp_register(u32 pin)
+{
+        return pin <=3D 1 ? E1000_CTRL : E1000_CTRL_EXT;
+}
+
+static ssize_t igb_sdp_get(struct device *dev,
+                                     struct device_attribute *attr,
+                                     char *buf)
+{
+        volatile u32 ctrl_value;
+        struct sdp_attr *igb_attr =3D container_of(attr, struct =
sdp_attr,
+                                                     dev_attr);
+        struct e1000_hw *hw =3D &igb_attr->adapter->hw;
+        u32 reg_number;
+
+        reg_number =3D igb_sdp_register(igb_attr->pin);
+        ctrl_value =3D rd32(reg_number);
+        wr32(reg_number, ctrl_value & ~(1 << =
igb_sdp_direction_bit(igb_attr->pin)));
+        ctrl_value =3D rd32(reg_number);
+
+        return sprintf(buf, "%d\n", (ctrl_value >> =
igb_sdp_value_bit(igb_attr->pin)) & 1);
+}
+
+static ssize_t igb_sdp_set(struct device *dev,
+                                     struct device_attribute *attr,
+                                     const char *buf, size_t count)
+{
+        struct sdp_attr *igb_attr =3D container_of(attr, struct =
sdp_attr,
+                                                     dev_attr);
+        struct e1000_hw *hw =3D &igb_attr->adapter->hw;
+        int on =3D -1;
+        volatile u32 ctrl_value;
+        u32 reg_number;
+        u32 value_bit;
+
+
+        sscanf(buf, "%d", &on);
+        on =3D on =3D=3D 0 ? 0 : 1;
+
+        //Software defined pins live on different registers:
+        //0 and 1 live on CTRL, 2 and 3 live on CTRL_EXT
+        reg_number =3D igb_sdp_register(igb_attr->pin);
+
+        ctrl_value =3D rd32(reg_number);
+        ctrl_value |=3D (1 << igb_sdp_direction_bit(igb_attr->pin));
+
+        value_bit =3D igb_sdp_value_bit(igb_attr->pin);
+        if(on) {
+                ctrl_value |=3D 1 << value_bit;
+        } else {
+                ctrl_value &=3D ~(1 << value_bit);
+        }
+
+        wr32(reg_number, ctrl_value);
+        return count;
+}
+
+
+static int igb_add_sdp_attr(struct igb_adapter *adapter, u32 pin)
+{
+
+        struct sdp_attr *igb_attr;
+
+        u32 n_sdp;
+        n_sdp =3D adapter->n_sdp;
+        if(n_sdp > IGB_MAX_SDPS) {
+                return ENOMEM;
+        }
+
+        igb_attr =3D &adapter->sdp_attrs[n_sdp];
+        igb_attr->adapter =3D adapter;
+        igb_attr->pin =3D pin;
+        snprintf(igb_attr->name, sizeof(igb_attr->name), "pin%d", pin);
+
+        igb_attr->dev_attr.show =3D igb_sdp_get;
+        igb_attr->dev_attr.store =3D igb_sdp_set;
+        igb_attr->dev_attr.attr.mode =3D 0660;
+        igb_attr->dev_attr.attr.name =3D igb_attr->name;
+        sysfs_attr_init(&igb_attr->dev_attr.attr);
+
+        adapter->n_sdp++;
+        return device_create_file(&adapter->pdev->dev,
+                                &igb_attr->dev_attr);
+}
+
+
+static void igb_sdp_del(struct igb_adapter *adapter)
+{
+        u32 i;
+        for(i =3D 0; i < adapter->n_sdp; i++) {
+                device_remove_file(&adapter->pdev->dev, =
&adapter->sdp_attrs[i].dev_attr);
+        }
+}
+
+static int igb_sdp_init(struct igb_adapter *adapter)
+{
+	u32 i;
+	int rc =3D 0;
+        for(i =3D 0; i < IGB_SDP_COUNT; i++) {
+                rc =3D igb_add_sdp_attr(adapter, i);
+                if (rc)
+			return rc;
+        }
+	return 0;
+}
+
+
 static int igb_ndo_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			   struct net_device *dev,
 			   const unsigned char *addr, u16 vid,
@@ -3383,6 +3506,7 @@ static int igb_probe(struct pci_dev *pdev, const =
struct pci_device_id *ent)
 		adapter->ets =3D false;
 	}
 #endif
+	igb_sdp_init(adapter);
 	/* Check if Media Autosense is enabled */
 	adapter->ei =3D *ei;
 	if (hw->dev_spec._82575.mas_capable)
@@ -3642,6 +3766,7 @@ static void igb_remove(struct pci_dev *pdev)
 #ifdef CONFIG_IGB_HWMON
 	igb_sysfs_exit(adapter);
 #endif
+	igb_sdp_del(adapter);
 	igb_remove_i2c(adapter);
 	igb_ptp_stop(adapter);
 	/* The watchdog timer may be rescheduled, so explicitly
--=20
2.17.1


--Apple-Mail=_B96D4C2E-E3A4-495F-85DA-0AD917823FD2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hi.<div class=3D""><br class=3D""></div><div class=3D"">Intel =
i350 nic has software defined pins. &nbsp;I have a custom hardware where =
these pins are connected to</div><div class=3D"">some peripheral and I =
need to enable/disable them.</div><div class=3D""><br =
class=3D""></div><div class=3D"">Here is patch that enables access to =
them. I can turn off peripheral device by:</div><div class=3D""><br =
class=3D""></div><div class=3D"">echo 0 &gt; =
/sys/class/net/eth1/device/pin2</div><div class=3D""><br =
class=3D""></div><div class=3D"">and turn on by:</div><div class=3D""><br =
class=3D""></div><div class=3D""><div class=3D"">echo 1 &gt; =
/sys/class/net/eth1/device/pin2</div></div><div class=3D""><br =
class=3D""></div><div class=3D"">Please, give any corrections and =
advices if this patch requires any changes.</div><div class=3D"">It is =
made again &nbsp;<a =
href=3D"git://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.=
git" =
class=3D"">git://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-que=
ue.git</a>&nbsp; dev-queue</div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D""><div class=3D"">Subject: [PATCH] i350: Add support for Intel =
i350 software defined pins</div><div class=3D""><br class=3D""></div><div =
class=3D"">NIC i350 with igb driver has software defined pins.</div><div =
class=3D"">Allow to access them via sysfs files.</div><div =
class=3D"">---</div><div =
class=3D"">&nbsp;drivers/net/ethernet/intel/igb/igb.h &nbsp; &nbsp; =
&nbsp;| &nbsp;28 +++++</div><div =
class=3D"">&nbsp;drivers/net/ethernet/intel/igb/igb_main.c | 127 =
+++++++++++++++++++++-</div><div class=3D"">&nbsp;2 files changed, 154 =
insertions(+), 1 deletion(-)</div><div class=3D""><br =
class=3D""></div><div class=3D"">diff --git =
a/drivers/net/ethernet/intel/igb/igb.h =
b/drivers/net/ethernet/intel/igb/igb.h</div><div class=3D"">index =
ca54e268d157..2453674464fa 100644</div><div class=3D"">--- =
a/drivers/net/ethernet/intel/igb/igb.h</div><div class=3D"">+++ =
b/drivers/net/ethernet/intel/igb/igb.h</div><div class=3D"">@@ -79,6 =
+79,20 @@ struct igb_adapter;</div><div class=3D"">&nbsp;#define =
IGB_I210_RX_LATENCY_100<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		</span>2213</div><div =
class=3D"">&nbsp;#define IGB_I210_RX_LATENCY_1000<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>448</div><div class=3D"">&nbsp;</div><div class=3D"">+</div><div =
class=3D"">+/* Software defined pins 0-1 */</div><div class=3D"">+#define =
IGB_CTRL_SDP0_DATA 0x00040000 /* Value of SW Defineable Pin 0 =
*/</div><div class=3D"">+#define IGB_CTRL_SDP1_DATA 0x00080000 /* Value =
of SW Defineable Pin 1 */</div><div class=3D"">+#define =
IGB_CTRL_SDP0_DIR &nbsp;0x00400000 /* SDP0 Data direction */</div><div =
class=3D"">+#define IGB_CTRL_SDP1_DIR &nbsp;0x00800000 /* SDP1 Data =
direction */</div><div class=3D"">+</div><div class=3D"">+/* Software =
defined pins 2-3 */</div><div class=3D"">+#define IGB_CTRL_EXT_SDP2_DATA =
E1000_CTRL_EXT_SDP2_DATA /* Value of SW Defineable Pin 2 */</div><div =
class=3D"">+#define IGB_CTRL_EXT_SDP3_DATA E1000_CTRL_EXT_SDP3_DATA /* =
Value of SW Defineable Pin 3 */</div><div class=3D"">+#define =
IGB_CTRL_EXT_SDP2_DIR &nbsp;E1000_CTRL_EXT_SDP2_DIR &nbsp;/* SDP2 Data =
direction */</div><div class=3D"">+#define IGB_CTRL_EXT_SDP3_DIR =
&nbsp;E1000_CTRL_EXT_SDP3_DIR &nbsp;/* SDP3 Data direction */</div><div =
class=3D"">+</div><div class=3D"">+</div><div class=3D"">&nbsp;struct =
vf_data_storage {</div><div class=3D"">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>unsigned =
char vf_mac_addresses[ETH_ALEN];</div><div class=3D"">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>u16 =
vf_mc_hashes[IGB_MAX_VF_MC_ENTRIES];</div><div class=3D"">@@ -380,6 =
+394,16 @@ static inline int igb_desc_unused(struct igb_ring =
*ring)</div><div class=3D"">&nbsp;<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>return ring-&gt;count + =
ring-&gt;next_to_clean - ring-&gt;next_to_use - 1;</div><div =
class=3D"">&nbsp;}</div><div class=3D"">&nbsp;</div><div =
class=3D"">+#define IGB_SDP_COUNT 4</div><div class=3D"">+#define =
IGB_MAX_SDPS 4</div><div class=3D"">+// Software defined pins</div><div =
class=3D"">+struct sdp_attr {</div><div class=3D"">+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>struct =
device_attribute dev_attr;</div><div class=3D"">+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>u32 =
pin;</div><div class=3D"">+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>struct igb_adapter =
*adapter;</div><div class=3D"">+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>char name[12];</div><div =
class=3D"">+};</div><div class=3D"">+</div><div class=3D"">&nbsp;#ifdef =
CONFIG_IGB_HWMON</div><div class=3D"">&nbsp;</div><div =
class=3D"">&nbsp;#define IGB_HWMON_TYPE_LOC<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>0</div><div class=3D"">@@ -568,6 =
+592,10 @@ struct igb_adapter {</div><div class=3D"">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>} =
perout[IGB_N_PEROUT];</div><div class=3D"">&nbsp;</div><div =
class=3D"">&nbsp;<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>char fw_version[32];</div><div class=3D"">+</div><div =
class=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>u32 n_sdp;</div><div class=3D"">+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>struct sdp_attr =
sdp_attrs[IGB_MAX_SDPS];</div><div class=3D"">+</div><div =
class=3D"">&nbsp;#ifdef CONFIG_IGB_HWMON</div><div class=3D"">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>struct =
hwmon_buff *igb_hwmon_buff;</div><div class=3D"">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>bool =
ets;</div><div class=3D"">diff --git =
a/drivers/net/ethernet/intel/igb/igb_main.c =
b/drivers/net/ethernet/intel/igb/igb_main.c</div><div class=3D"">index =
fc925adbd9fa..447417fb4d3f 100644</div><div class=3D"">--- =
a/drivers/net/ethernet/intel/igb/igb_main.c</div><div class=3D"">+++ =
b/drivers/net/ethernet/intel/igb/igb_main.c</div><div class=3D"">@@ =
-40,7 +40,7 @@</div><div class=3D"">&nbsp;</div><div =
class=3D"">&nbsp;#define MAJ 5</div><div class=3D"">&nbsp;#define MIN =
6</div><div class=3D"">-#define BUILD 0</div><div class=3D"">+#define =
BUILD 1</div><div class=3D"">&nbsp;#define DRV_VERSION __stringify(MAJ) =
"." __stringify(MIN) "." \</div><div class=3D"">&nbsp;__stringify(BUILD) =
"-k"</div><div class=3D"">&nbsp;</div><div class=3D"">@@ -2484,6 =
+2484,129 @@ static int igb_set_features(struct net_device =
*netdev,</div><div class=3D"">&nbsp;<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>return 1;</div><div =
class=3D"">&nbsp;}</div><div class=3D"">&nbsp;</div><div =
class=3D"">+static u32 igb_sdp_direction_bit(u32 pin)</div><div =
class=3D"">+{</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;return =
pin =3D=3D 0 ? IGB_CTRL_SDP0_DIR :</div><div class=3D"">+ &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;pin =3D=3D 1 ? IGB_CTRL_SDP1_DIR :</div><div =
class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;pin =3D=3D 2 ? =
IGB_CTRL_EXT_SDP2_DIR :</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;pin =3D=3D 3 ? IGB_CTRL_EXT_SDP3_DIR : =
0xFFFFFFFF;</div><div class=3D"">+}</div><div class=3D"">+</div><div =
class=3D"">+static u32 igb_sdp_value_bit(u32 pin)</div><div =
class=3D"">+{</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;return =
pin =3D=3D IGB_CTRL_SDP0_DIR ? 18 :</div><div class=3D"">+ &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;pin =3D=3D 1 ? IGB_CTRL_SDP1_DIR :</div><div =
class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;pin =3D=3D 2 ? =
IGB_CTRL_EXT_SDP2_DIR :</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;pin =3D=3D 3 ? IGB_CTRL_EXT_SDP3_DIR : =
0xFFFFFFFF;</div><div class=3D"">+}</div><div class=3D"">+</div><div =
class=3D"">+static u32 igb_sdp_register(u32 pin)</div><div =
class=3D"">+{</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;return =
pin &lt;=3D 1 ? E1000_CTRL : E1000_CTRL_EXT;</div><div =
class=3D"">+}</div><div class=3D"">+</div><div class=3D"">+static =
ssize_t igb_sdp_get(struct device *dev,</div><div class=3D"">+ &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; struct device_attribute =
*attr,</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; char *buf)</div><div class=3D"">+{</div><div class=3D"">+ =
&nbsp; &nbsp; &nbsp; &nbsp;volatile u32 ctrl_value;</div><div class=3D"">+=
 &nbsp; &nbsp; &nbsp; &nbsp;struct sdp_attr *igb_attr =3D =
container_of(attr, struct sdp_attr,</div><div class=3D"">+ &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; dev_attr);</div><div class=3D"">+ &nbsp; =
&nbsp; &nbsp; &nbsp;struct e1000_hw *hw =3D =
&amp;igb_attr-&gt;adapter-&gt;hw;</div><div class=3D"">+ &nbsp; &nbsp; =
&nbsp; &nbsp;u32 reg_number;</div><div class=3D"">+</div><div class=3D"">+=
 &nbsp; &nbsp; &nbsp; &nbsp;reg_number =3D =
igb_sdp_register(igb_attr-&gt;pin);</div><div class=3D"">+ &nbsp; &nbsp; =
&nbsp; &nbsp;ctrl_value =3D rd32(reg_number);</div><div class=3D"">+ =
&nbsp; &nbsp; &nbsp; &nbsp;wr32(reg_number, ctrl_value &amp; ~(1 =
&lt;&lt; igb_sdp_direction_bit(igb_attr-&gt;pin)));</div><div class=3D"">+=
 &nbsp; &nbsp; &nbsp; &nbsp;ctrl_value =3D rd32(reg_number);</div><div =
class=3D"">+</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;return =
sprintf(buf, "%d\n", (ctrl_value &gt;&gt; =
igb_sdp_value_bit(igb_attr-&gt;pin)) &amp; 1);</div><div =
class=3D"">+}</div><div class=3D"">+</div><div class=3D"">+static =
ssize_t igb_sdp_set(struct device *dev,</div><div class=3D"">+ &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; struct device_attribute =
*attr,</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; const char *buf, size_t count)</div><div =
class=3D"">+{</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;struct =
sdp_attr *igb_attr =3D container_of(attr, struct sdp_attr,</div><div =
class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
dev_attr);</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;struct =
e1000_hw *hw =3D &amp;igb_attr-&gt;adapter-&gt;hw;</div><div class=3D"">+ =
&nbsp; &nbsp; &nbsp; &nbsp;int on =3D -1;</div><div class=3D"">+ &nbsp; =
&nbsp; &nbsp; &nbsp;volatile u32 ctrl_value;</div><div class=3D"">+ =
&nbsp; &nbsp; &nbsp; &nbsp;u32 reg_number;</div><div class=3D"">+ &nbsp; =
&nbsp; &nbsp; &nbsp;u32 value_bit;</div><div class=3D"">+</div><div =
class=3D"">+</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; =
&nbsp;sscanf(buf, "%d", &amp;on);</div><div class=3D"">+ &nbsp; &nbsp; =
&nbsp; &nbsp;on =3D on =3D=3D 0 ? 0 : 1;</div><div class=3D"">+</div><div =
class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;//Software defined pins live on =
different registers:</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; =
&nbsp;//0 and 1 live on CTRL, 2 and 3 live on CTRL_EXT</div><div =
class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;reg_number =3D =
igb_sdp_register(igb_attr-&gt;pin);</div><div class=3D"">+</div><div =
class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;ctrl_value =3D =
rd32(reg_number);</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; =
&nbsp;ctrl_value |=3D (1 &lt;&lt; =
igb_sdp_direction_bit(igb_attr-&gt;pin));</div><div class=3D"">+</div><div=
 class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;value_bit =3D =
igb_sdp_value_bit(igb_attr-&gt;pin);</div><div class=3D"">+ &nbsp; =
&nbsp; &nbsp; &nbsp;if(on) {</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ctrl_value |=3D 1 &lt;&lt; =
value_bit;</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;} else =
{</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;ctrl_value &amp;=3D ~(1 &lt;&lt; value_bit);</div><div =
class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;}</div><div class=3D"">+</div><div=
 class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;wr32(reg_number, =
ctrl_value);</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;return =
count;</div><div class=3D"">+}</div><div class=3D"">+</div><div =
class=3D"">+</div><div class=3D"">+static int igb_add_sdp_attr(struct =
igb_adapter *adapter, u32 pin)</div><div class=3D"">+{</div><div =
class=3D"">+</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;struct =
sdp_attr *igb_attr;</div><div class=3D"">+</div><div class=3D"">+ &nbsp; =
&nbsp; &nbsp; &nbsp;u32 n_sdp;</div><div class=3D"">+ &nbsp; &nbsp; =
&nbsp; &nbsp;n_sdp =3D adapter-&gt;n_sdp;</div><div class=3D"">+ &nbsp; =
&nbsp; &nbsp; &nbsp;if(n_sdp &gt; IGB_MAX_SDPS) {</div><div class=3D"">+ =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return =
ENOMEM;</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;}</div><div =
class=3D"">+</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;igb_attr =
=3D &amp;adapter-&gt;sdp_attrs[n_sdp];</div><div class=3D"">+ &nbsp; =
&nbsp; &nbsp; &nbsp;igb_attr-&gt;adapter =3D adapter;</div><div =
class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;igb_attr-&gt;pin =3D =
pin;</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; =
&nbsp;snprintf(igb_attr-&gt;name, sizeof(igb_attr-&gt;name), "pin%d", =
pin);</div><div class=3D"">+</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; =
&nbsp;igb_attr-&gt;dev_attr.show =3D igb_sdp_get;</div><div class=3D"">+ =
&nbsp; &nbsp; &nbsp; &nbsp;igb_attr-&gt;dev_attr.store =3D =
igb_sdp_set;</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; =
&nbsp;igb_attr-&gt;dev_attr.attr.mode =3D 0660;</div><div class=3D"">+ =
&nbsp; &nbsp; &nbsp; &nbsp;igb_attr-&gt;dev_attr.attr.name =3D =
igb_attr-&gt;name;</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; =
&nbsp;sysfs_attr_init(&amp;igb_attr-&gt;dev_attr.attr);</div><div =
class=3D"">+</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; =
&nbsp;adapter-&gt;n_sdp++;</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; =
&nbsp;return device_create_file(&amp;adapter-&gt;pdev-&gt;dev,</div><div =
class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&amp;igb_attr-&gt;dev_attr);</div><div class=3D"">+}</div><div =
class=3D"">+</div><div class=3D"">+</div><div class=3D"">+static void =
igb_sdp_del(struct igb_adapter *adapter)</div><div class=3D"">+{</div><div=
 class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;u32 i;</div><div class=3D"">+ =
&nbsp; &nbsp; &nbsp; &nbsp;for(i =3D 0; i &lt; adapter-&gt;n_sdp; i++) =
{</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;device_remove_file(&amp;adapter-&gt;pdev-&gt;dev, =
&amp;adapter-&gt;sdp_attrs[i].dev_attr);</div><div class=3D"">+ &nbsp; =
&nbsp; &nbsp; &nbsp;}</div><div class=3D"">+}</div><div =
class=3D"">+</div><div class=3D"">+static int igb_sdp_init(struct =
igb_adapter *adapter)</div><div class=3D"">+{</div><div class=3D"">+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>u32 =
i;</div><div class=3D"">+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>int rc =3D 0;</div><div =
class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;for(i =3D 0; i &lt; =
IGB_SDP_COUNT; i++) {</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;rc =3D igb_add_sdp_attr(adapter, =
i);</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;if (rc)</div><div class=3D"">+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">			</span>return =
rc;</div><div class=3D"">+ &nbsp; &nbsp; &nbsp; &nbsp;}</div><div =
class=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>return 0;</div><div class=3D"">+}</div><div class=3D"">+</div><div =
class=3D"">+</div><div class=3D"">&nbsp;static int =
igb_ndo_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],</div><div =
class=3D"">&nbsp;<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
			</span> &nbsp; struct net_device *dev,</div><div =
class=3D"">&nbsp;<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
			</span> &nbsp; const unsigned char *addr, u16 =
vid,</div><div class=3D"">@@ -3383,6 +3506,7 @@ static int =
igb_probe(struct pci_dev *pdev, const struct pci_device_id =
*ent)</div><div class=3D"">&nbsp;<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		</span>adapter-&gt;ets =3D =
false;</div><div class=3D"">&nbsp;<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>}</div><div =
class=3D"">&nbsp;#endif</div><div class=3D"">+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>igb_sdp_init(adapter);</div><div class=3D"">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* Check =
if Media Autosense is enabled */</div><div class=3D"">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>adapter-&gt;ei =3D *ei;</div><div class=3D"">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>if =
(hw-&gt;dev_spec._82575.mas_capable)</div><div class=3D"">@@ -3642,6 =
+3766,7 @@ static void igb_remove(struct pci_dev *pdev)</div><div =
class=3D"">&nbsp;#ifdef CONFIG_IGB_HWMON</div><div class=3D"">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>igb_sysfs_exit(adapter);</div><div =
class=3D"">&nbsp;#endif</div><div class=3D"">+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>igb_sdp_del(adapter);</div><div class=3D"">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>igb_remove_i2c(adapter);</div><div class=3D"">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>igb_ptp_stop(adapter);</div><div class=3D"">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* The =
watchdog timer may be rescheduled, so explicitly</div><div =
class=3D"">--&nbsp;</div><div class=3D"">2.17.1</div><div class=3D""><br =
class=3D""></div></div></body></html>=

--Apple-Mail=_B96D4C2E-E3A4-495F-85DA-0AD917823FD2--

--===============3832054402045192319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3832054402045192319==--
