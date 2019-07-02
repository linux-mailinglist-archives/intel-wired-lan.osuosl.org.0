Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CF75DFFA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 10:37:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C6B2863D0;
	Wed,  3 Jul 2019 08:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hsBBInJtggNW; Wed,  3 Jul 2019 08:37:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F5BC864E5;
	Wed,  3 Jul 2019 08:37:48 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E9F01BF5B5
 for <intel-wired-lan@osuosl.org>; Tue,  2 Jul 2019 21:44:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3AE708538A
 for <intel-wired-lan@osuosl.org>; Tue,  2 Jul 2019 21:44:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nqm10TsbscQy for <intel-wired-lan@osuosl.org>;
 Tue,  2 Jul 2019 21:44:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relais-inet.orange.com (relais-inet.orange.com [80.12.70.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 735A185313
 for <intel-wired-lan@osuosl.org>; Tue,  2 Jul 2019 21:44:53 +0000 (UTC)
Received: from opfednr06.francetelecom.fr (unknown [xx.xx.xx.70])
 by opfednr24.francetelecom.fr (ESMTP service) with ESMTP id 45dd7R11sWz20D4
 for <intel-wired-lan@osuosl.org>; Tue,  2 Jul 2019 23:44:51 +0200 (CEST)
Received: from Exchangemail-eme3.itn.ftgroup (unknown [xx.xx.50.22])
 by opfednr06.francetelecom.fr (ESMTP service) with ESMTP id 45dd7R0gJgzDq7C
 for <intel-wired-lan@osuosl.org>; Tue,  2 Jul 2019 23:44:51 +0200 (CEST)
Received: from [10.193.4.89] (10.114.50.248) by
 OPEXCNORM4D.corporate.adroot.infra.ftgroup (10.114.50.22) with Microsoft SMTP
 Server (TLS) id 14.3.439.0; Tue, 2 Jul 2019 23:44:50 +0200
To: <intel-wired-lan@osuosl.org>
From: <alexandre.ferrieux@orange.com>
Message-ID: <18399_1562103891_5D1BD053_18399_181_1_5f6c18db-7ec3-98bc-489c-8fa1297e3b20@orange.com>
Date: Tue, 2 Jul 2019 23:45:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------E4C8985C541CA74AC65FC9DF"
Content-Language: fr-xx-moderne
X-Originating-IP: [10.114.50.248]
X-Mailman-Approved-At: Wed, 03 Jul 2019 08:37:46 +0000
Subject: [Intel-wired-lan] Fix for i40e driver: mirroring SEID mixup
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--------------E4C8985C541CA74AC65FC9DF
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

The attached patch fixes the non-working mirroring feature in all recent 
versions of the i40e driver including the latest (2.9.21).

Simply put, using

  echo 'add 3' > /sys/class/net/eth10/device/sriov/1/ingress_mirror

fails because it passes down the AQ a 0x0260 command with the same SEID (that of 
VF 3) as both mirrored-from and mirrored-to VF.

This was reported to the sourceforge e1000 projet a few days ago as

  https://sourceforge.net/p/e1000/bugs/646/

but I'm following advice given there to send it to you for a "fast track" as the 
repro and diagnosis is trivial and fix already provided.

Hope this helps,

-Alex

_________________________________________________________________________________________________________________________

Ce message et ses pieces jointes peuvent contenir des informations confidentielles ou privilegiees et ne doivent donc
pas etre diffuses, exploites ou copies sans autorisation. Si vous avez recu ce message par erreur, veuillez le signaler
a l'expediteur et le detruire ainsi que les pieces jointes. Les messages electroniques etant susceptibles d'alteration,
Orange decline toute responsabilite si ce message a ete altere, deforme ou falsifie. Merci.

This message and its attachments may contain confidential or privileged information that may be protected by law;
they should not be distributed, used or copied without authorisation.
If you have received this email in error, please notify the sender and delete this message and its attachments.
As emails may be altered, Orange is not liable for messages that have been modified, changed or falsified.
Thank you.


--------------E4C8985C541CA74AC65FC9DF
Content-Type: text/x-patch; name="alex-mirror.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="alex-mirror.patch"

--- i40e_virtchnl_pf.c~	2019-06-03 19:39:06.000000000 +0000
+++ i40e_virtchnl_pf.c	2019-06-30 14:39:08.635867592 +0000
@@ -938,7 +938,7 @@
 	vsi = pf->vsi[vf->lan_vsi_idx];
 	sw_seid = vsi->uplink_seid;
 	dst_seid = mirror_vsi->seid;
-	mr_list[num] = CPU_TO_LE16(mirror_vsi->seid);
+	mr_list[num] = CPU_TO_LE16(vsi->seid);
 	ret = i40e_aq_add_mirrorrule(&pf->hw, sw_seid,
 				     rule_type, dst_seid,
 				     cnt, mr_list, NULL,
@@ -991,7 +991,7 @@
 	mr_list = kcalloc(cnt, sizeof(__le16), GFP_KERNEL);
 	if (!mr_list)
 		return -ENOMEM;
-	mr_list[num] = CPU_TO_LE16(mirror_vsi->seid);
+	mr_list[num] = CPU_TO_LE16(vsi->seid);
 	ret = i40e_aq_delete_mirrorrule(&pf->hw, sw_seid, rule_type,
 					rule_id, cnt, mr_list, NULL,
 					&rules_used, &rules_free);

--------------E4C8985C541CA74AC65FC9DF
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--------------E4C8985C541CA74AC65FC9DF--
