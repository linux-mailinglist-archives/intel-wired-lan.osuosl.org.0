Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66873FCE12
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 19:45:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0957E89C90;
	Thu, 14 Nov 2019 18:45:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FMN2T9xYRol3; Thu, 14 Nov 2019 18:45:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A4DA989C8B;
	Thu, 14 Nov 2019 18:45:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 31F031BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 26FD889C8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S2bdeBAqO452 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 18:45:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AF1D389C8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:22 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id x28so4873226pfo.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 10:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FM0Xa5CiudMEuYb8SLKHiBcKyURm3GM8uH2aZPmH6I0=;
 b=sL6ewae8cqR2iO+Y3fQIcpw/lBi9VN+TvYmQIPf8SdGeqK1yvGsXEIOikxFGOthKP5
 Qi8JCFRJe0p3e6SDGszPrH3vPeZVbP/yxyiEt9uBvrwbVVclBrcbdNRKwFQ+3lkg7oli
 6eY1iAqbSnxGH4wbYockkaV+J9k0c99OR2u8D90WuGOt+/83fI6+y5X9Q0EM1puHm0uy
 CFSQG3v+cNFym/crT0bTl8nR/LQCrsIWqVWeCR/yVNLI/PhR/t5oE5Ptc9ctWa+jWWNG
 StO+vPb4gtiXltQZb/QnFGlepkR06X8Hq89Myn+iTaDGtW0IPfjdgeGo54WPWsiXo91s
 dnkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FM0Xa5CiudMEuYb8SLKHiBcKyURm3GM8uH2aZPmH6I0=;
 b=OXZ0d0swT9IHepals3vaUT1s1eH0xE2K3kMx1cV2nI9dxPhQxq5vmWj8BQzQ144TGX
 5E6XAAIQJmI6QBZ0KMvL4Dd6XgDKgcU2UV+9Sri7c0GbjxvTP6CPXsUjxW1ErLl0ISd1
 qoiITjV9hyNkQtaa5yOnTFYJsCK3gdIGkcrxracwyS97XIsLiAIFWFuEMSM9tUSYfw2l
 ywNSUSbNJ62M5gl0QBbh37xhKXCKDbydtta6zbxPdlblW7RJUdvKfDOlujTDYU+Xv9ka
 3Sjq8aeBdFs1BeahV7C77LN0ZVH07x5HyzaFyPa+ZCbdnBbERHLc8imtBnbMcsF4xCRz
 xKqw==
X-Gm-Message-State: APjAAAVa5DyzhvrbYxwgefWW7o+6eO70aeCu7AEZ2qTc90xhEhvxETJj
 Sv3FYdsVNmTb2IZky0CRYaE=
X-Google-Smtp-Source: APXvYqyBqA+/yf0s54xrqKe3oPWTtSleHncUSgQ1wUUX2iDg3/6htOF9EV3okmf551jJuYXw92P00Q==
X-Received: by 2002:a63:7210:: with SMTP id n16mr11119972pgc.397.1573757122328; 
 Thu, 14 Nov 2019 10:45:22 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id 23sm6819507pgw.8.2019.11.14.10.45.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:45:21 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 14 Nov 2019 10:45:03 -0800
Message-Id: <20191114184507.18937-10-richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 09/13] mv88e6xxx: Reject requests to
 enable time stamping on both edges.
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
Cc: Christopher Hall <christopher.s.hall@intel.com>,
 Brandon Streiff <brandon.streiff@ni.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Eugenia Emantayev <eugenia@mellanox.com>, Feras Daoud <ferasda@mellanox.com>,
 intel-wired-lan@lists.osuosl.org, David Miller <davem@davemloft.net>,
 Stefan Sorensen <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This driver enables rising edge or falling edge, but not both, and so
this patch validates that the request contains only one of the two
edges.

Signed-off-by: Richard Cochran <richardcochran@gmail.com>
---
 drivers/net/dsa/mv88e6xxx/ptp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/dsa/mv88e6xxx/ptp.c b/drivers/net/dsa/mv88e6xxx/ptp.c
index 3b1985902f95..d838c174dc0d 100644
--- a/drivers/net/dsa/mv88e6xxx/ptp.c
+++ b/drivers/net/dsa/mv88e6xxx/ptp.c
@@ -280,6 +280,12 @@ static int mv88e6352_ptp_enable_extts(struct mv88e6xxx_chip *chip,
 				PTP_STRICT_FLAGS))
 		return -EOPNOTSUPP;
 
+	/* Reject requests to enable time stamping on both edges. */
+	if ((rq->extts.flags & PTP_STRICT_FLAGS) &&
+	    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
+	    (rq->extts.flags & PTP_EXTTS_EDGES) == PTP_EXTTS_EDGES)
+		return -EOPNOTSUPP;
+
 	pin = ptp_find_pin(chip->ptp_clock, PTP_PF_EXTTS, rq->extts.index);
 
 	if (pin < 0)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
