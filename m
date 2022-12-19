Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE9E650ED7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 16:42:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A1228148E;
	Mon, 19 Dec 2022 15:42:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A1228148E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671464553;
	bh=94rzCqOWLSEUkcJqxOCn2xf0Au2NIcssOC9CalrILLs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ywYCO2hmIUhcPzL9hsJ6JgToWNaq6PEmzM6tUspYFeqvvyrw48rvVlnEwVrU2G97+
	 5In3/a6Ky48rUo4qSgldVbJVZwjQFtXYS9slsThgRmbF+wZa4zxIiiY1LBznsy5Pb1
	 5Rwx/+D1ccd8FmxUbtoEwb3iJ7vTHyWCP3r5hdZ3d46iCncLgyUCbAV24Pz8GY93DC
	 +oAiWFLvSwXbces/LFSwn1VC0ER7DZpky1koUuNHUZNvisq36HcIZw9kjd3Sl7Qsev
	 BPbypODSzyyDE9s8uTnNudCJ5no02DHiCboejrwv3m73uVw2PPstNPMUpyeLlIqwSe
	 IPYWb2Zy+XYmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1YR1XpGfeAhA; Mon, 19 Dec 2022 15:42:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 748AC8146A;
	Mon, 19 Dec 2022 15:42:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 748AC8146A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D6551BF317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E9D8660BD5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9D8660BD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3oC5gmVsPTFb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 15:42:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 199CF60B46
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 199CF60B46
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:27 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 2C1CEB80E9E;
 Mon, 19 Dec 2022 15:42:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B584C433D2;
 Mon, 19 Dec 2022 15:42:23 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Mon, 19 Dec 2022 16:41:30 +0100
Message-Id: <ad8a0debd10ef5a2edcbfc202ae439af4cb1b718.1671462950.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <cover.1671462950.git.lorenzo@kernel.org>
References: <cover.1671462950.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1671464544;
 bh=Mko/GoxpYbPQ1yT5G9uVYi0KpQ+vihSNa+XLZtA91z0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DWak3xIi05AKzNtr1WWLLzc+peZ8xZpm6TTgUPSynIjojSoqR750nA616UErlxrMB
 29TTfEliPDLOb7UCT3DByW05KD308TRJKkoEPjTDIn5ZQFVYBNO7H/ldmle9XprNN9
 YXNt6Qg4iIfJYRUTNdMEug0O29qAdHhhWjOs/c8sWrw/3uSyWcpvrWI17b8RW7BGP7
 +nKefQxLm27DzZ+6CP6oV37Oim4bgzJYXAmDSHisW9EyKbhDkgqF7SYlMnKJGyWmd7
 x0kmPXr6uNH1swEFCcqK0Ghvw+EojYHQcDJPu/sCuLGetZ+Mrv9hbGByNzFVHFMgNP
 sEZ+khaXZzPaQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DWak3xIi
Subject: [Intel-wired-lan] [RFC bpf-next 1/8] tools: uapi: align if_link.h
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, grygorii.strashko@ti.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Align IFLA enum definitions in tools/include/uapi/linux/if_link.h to
include/uapi/linux/if_link.h after the following commits:
- '7e6e1b57162e ("rtnetlink: advertise allmulti counter")'
- 'dca56c3038c3 ("net: expose devlink port over rtnetlink")'

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 tools/include/uapi/linux/if_link.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/tools/include/uapi/linux/if_link.h b/tools/include/uapi/linux/if_link.h
index 901d98b865a1..82fe18f26db5 100644
--- a/tools/include/uapi/linux/if_link.h
+++ b/tools/include/uapi/linux/if_link.h
@@ -350,6 +350,9 @@ enum {
 	IFLA_GRO_MAX_SIZE,
 	IFLA_TSO_MAX_SIZE,
 	IFLA_TSO_MAX_SEGS,
+	IFLA_ALLMULTI,		/* Allmulti count: > 0 means acts ALLMULTI */
+
+	IFLA_DEVLINK_PORT,
 
 	__IFLA_MAX
 };
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
