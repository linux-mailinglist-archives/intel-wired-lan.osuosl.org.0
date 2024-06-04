Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FDC8FBDCA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 23:09:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD4D8408DE;
	Tue,  4 Jun 2024 21:09:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C7uoz2AHbgF7; Tue,  4 Jun 2024 21:09:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B5D8408C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717535351;
	bh=pnm4VvNxff61Xbs7PCXNlnP5w/sI2C5GXRKzsvs5upk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Vr3FjN/X2RlVDnWYFbLDQJnePQPADi6Qi1XbcCcfDg+GFybqnvXafpYRHw0LacWwZ
	 sq1NONvVpFExA2USR1qIll2DC+POpsV3UIEPxU/8hWtCz1ALjvFZubmSTQfD7moEKY
	 kME9Gtu6cZzX5NIda9ArfDE/lLGDUIqeyEeaB9tko6ZSgizilUYrNHd6OJpUlwoijc
	 iJNO1b9UeGX+EqbpO20QaG8gJFGSsBpUdhOSryMyyjaSnF7rfP1neKCS6BwOIR6JVR
	 ChjuD8QACLeGAx7H4Wa9W9xbGx6yS7U8xamaDo7UMc2xKQuFp2G9G5n/Hj7O6ewCcs
	 d+HzcE/KMNBGw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B5D8408C3;
	Tue,  4 Jun 2024 21:09:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6626C1BF399
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 03:18:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 430D083753
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 03:18:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a4pjyMPi7mvz for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 03:18:18 +0000 (UTC)
X-Greylist: delayed 472 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 04 Jun 2024 03:18:17 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 05E11836A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05E11836A7
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.36.163.20;
 helo=gate2.alliedtelesis.co.nz; envelope-from=jackiej@alliedtelesis.co.nz;
 receiver=<UNKNOWN> 
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [202.36.163.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 05E11836A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 03:18:16 +0000 (UTC)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 42A042C0304;
 Tue,  4 Jun 2024 15:10:22 +1200 (NZST)
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by
 svr-chch-seg1.atlnz.lc with Trustwave SEG (v8, 2, 6, 11305)
 id <B665e859e0000>; Tue, 04 Jun 2024 15:10:22 +1200
Received: from jackiej-dl.ws.atlnz.lc (jackiej-dl.ws.atlnz.lc [10.33.25.29])
 by pat.atlnz.lc (Postfix) with ESMTP id 0FD8713EE2B;
 Tue,  4 Jun 2024 15:10:22 +1200 (NZST)
Received: by jackiej-dl.ws.atlnz.lc (Postfix, from userid 1927)
 id 08F1A1C0747; Tue,  4 Jun 2024 15:10:22 +1200 (NZST)
From: jackie.jone@alliedtelesis.co.nz
To: davem@davemloft.net
Date: Tue,  4 Jun 2024 15:10:20 +1200
Message-ID: <20240604031020.2313175-1-jackie.jone@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=F9L0dbhN c=1 sm=1 tr=0 ts=665e859e
 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=T1WGqf2p2xoA:10 a=YmqHs4GwyjAq34ObVysA:9
 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-Mailman-Approved-At: Tue, 04 Jun 2024 21:09:03 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=alliedtelesis.co.nz; 
 s=mail181024; t=1717470622;
 bh=pnm4VvNxff61Xbs7PCXNlnP5w/sI2C5GXRKzsvs5upk=;
 h=From:To:Cc:Subject:Date:From;
 b=0mQwofbyDlXjFvSFo8IKIOVNmtmWIo13N0QwPgW6heK55zxL6uzFRiOVCe7v/dN50
 GDfnp5mbUxoapQ/oTcdyr53F7JWnBWMq4ioi5LNDUyB6Vn8jFmV7yB8+elZc/T6iOg
 rQxtpum0U3HblpWaDAqFUyGW0+EiQmXosyeUyp6hSBsv8rbRoJpnS1d+RvcoLX6o2a
 cRaAJGf3oG4ECnQIw+ZJ+FkKdpYDr0ZhtWTqRmnqsiY1HFBFjY3W0/VbxooibhMxxt
 j37b8yr2lP24z/XbUwI8oWrpJ4ZuxvWl0AJMX3Pe+gaEVqkjmo9gQy6n0wJnuNfigI
 HM0XDx1c7M+tA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=alliedtelesis.co.nz
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz
 header.a=rsa-sha256 header.s=mail181024 header.b=0mQwofby
Subject: [Intel-wired-lan] [PATCH] igb: Add MII write support
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
Cc: jackie.jone@alliedtelesis.co.nz, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, anthony.l.nguyen@intel.com,
 chris.packham@alliedtelesis.co.nz, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jackie Jone <jackie.jone@alliedtelesis.co.nz>

To facilitate running PHY parametric tests, add support for the SIOCSMIIR=
EG
ioctl. This allows a userspace application to write to the PHY registers
to enable the test modes.

Signed-off-by: Jackie Jone <jackie.jone@alliedtelesis.co.nz>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethe=
rnet/intel/igb/igb_main.c
index 03a4da6a1447..7fbfcf01fbf9 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -8977,6 +8977,10 @@ static int igb_mii_ioctl(struct net_device *netdev=
, struct ifreq *ifr, int cmd)
 			return -EIO;
 		break;
 	case SIOCSMIIREG:
+		if (igb_write_phy_reg(&adapter->hw, data->reg_num & 0x1F,
+				     data->val_in))
+			return -EIO;
+		break;
 	default:
 		return -EOPNOTSUPP;
 	}
