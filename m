Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4397C7652
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:07:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DF7C612D1;
	Thu, 12 Oct 2023 19:07:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DF7C612D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137677;
	bh=60UefcizznLBx6M2vGYK5o7Bg/AxO2I0ZISRtOkt6gY=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W1KKUBLFB/qI+mnAjkPqfOR4XcMMbAr1wBcStT5LxuVzYgTEYzb86tbJOz8Ubc4KI
	 G5qIEwyrw+cXFw8QEf+oRUHhYe9wdFRUy9cMS8WDxEmuIgUaWIZbXf/VJx9ECuY9c+
	 pZlmadw9Q4QZ3C/EEIsDGbG6OoachSI/SAqkstOmlpZyo0krHTq+1SLG8djEjSqUX5
	 BM7Ol2Q0QjoTp6kmjILAlkeCaaMALWGYY3Lj+IDz8LagVoibXBZa3LHni2s3W3S2cL
	 gGeKJz+G/H9/dRuJSA72hJWDTfvcuXcTPNRmq96T5J42K9/qfpYGrP53cnIVc2QqSJ
	 0SP77l/Oo2wWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HYGhjjUw2Ok7; Thu, 12 Oct 2023 19:07:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43002606DC;
	Thu, 12 Oct 2023 19:07:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43002606DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A33B01BF969
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C5A74044D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C5A74044D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fhRk5r4I1G9G for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 22:27:14 +0000 (UTC)
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A302240012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A302240012
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-5a7bcbb95b2so20484297b3.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 15:27:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696976833; x=1697581633;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=no1ezg/K8vqwwloDW/HES3GQ/s3OFKPTQdEopkcO670=;
 b=nuk0xsb6ahM6u+vYiui6YNsnl9G0XTvvGQ9ELR0neT4GrImeEnArXLyo2LgrzklTuv
 1rutxWYtq6gxEWsirzmAWgpUkpRrDCgH72SLkgKdWiMlG8CexaHs2rAVopSa43Mx67Lq
 dWzsfjcpgKjDTDPN8ZS6B6H6FYVeHYrVzX0axfZITJ1vBNvf/HwmVKk0KhRjenFPVUdJ
 aXxOK6gWnWVGsNOLdFCqOY+PvCx8o7ACML1tFmp1cgWlPm5OEfKhhju8XI50AgVJ8hG1
 kPSeRn4+1irwSlFqcVOByMxBhJYBcA8TT1xfP/lxvahRMz6pcHZnLAS1fS17kSYmFXuZ
 qXYQ==
X-Gm-Message-State: AOJu0YxsuHQdbF6eEZ68at4OQRwYR+XrAc/ndlSDOyngpouZEtg2Z2Rc
 KZge4jzH31g+N3Fl1hAlUUQjB7MNp/LShWM+OQ==
X-Google-Smtp-Source: AGHT+IGbG6IYsWKztc9eojIXUzVD3Isy/9hlxzBlyjEVNI0A4VM2MItv3Gt9eZ20f/xkZ1g/F2q2V2ckLAz9494wcg==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a25:3290:0:b0:d9a:5b63:a682 with SMTP
 id y138-20020a253290000000b00d9a5b63a682mr53542yby.13.1696976833634; Tue, 10
 Oct 2023 15:27:13 -0700 (PDT)
Date: Tue, 10 Oct 2023 22:26:59 +0000
In-Reply-To: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
Mime-Version: 1.0
References: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696976825; l=1977;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=l7ud0vzH9yZbaC9lpRM0yEoQEtXO/RLFBqfqu9zutis=;
 b=jQcCLbxmGWObHnArcKoYj2/zN6/Nnp7Y3bIItQSofJOQ0w5NrEaAgjJZ8R6E+xsT14D0zxpeI
 a7KQJh8W8O7AWC0AJvaq/NMmrGf75By+asp4Xl/fMav25g/6JTazc+A
X-Mailer: b4 0.12.3
Message-ID: <20231010-netdev-replace-strncpy-resend-as-series-v1-6-caf9f0f2f021@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696976833; x=1697581633; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=no1ezg/K8vqwwloDW/HES3GQ/s3OFKPTQdEopkcO670=;
 b=OO0khsc3IrhIR26Q4wPVt+KfF+7kuyCAuiWiBb1OPg926djLESZxpZjAvlDBUgN8gh
 dWN+rFwxcrNWRA7ml67Rh7ttA1zX+30r1ovORCCMzZJZS5OyFcqu50+u4sgvVOaxiPFI
 IRnAFTCe1rwflJReLdRA/RH91Vr3O3njyt9XqFlsVxCfIeYeRisIANI5UMTITbzkwyj4
 C5e/r3+vXlQR74MjHM4V7Cd+V10sABWKSWOBo++ufIHGFDrV9rcpL3AD2hQl2SaStpMJ
 jWgL10JK8Zi5u20ctdEcERsFPRpHfrOl261sew3hvGr+Jpz9ws7p8SIvm3UO37u79d3v
 o4Ag==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=OO0khsc3
Subject: [Intel-wired-lan] [PATCH v1 net-next 6/7] igbvf: replace deprecated
 strncpy with strscpy
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
Cc: netdev@vger.kernel.org, Justin Stitt <justinstitt@google.com>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

`strncpy` is deprecated for use on NUL-terminated destination strings
[1] and as such we should prefer more robust and less ambiguous string
interfaces.

We expect netdev->name to be NUL-terminated based on its usage with
`strlen` and format strings:
|       if (strlen(netdev->name) < (IFNAMSIZ - 5)) {
|               sprintf(adapter->tx_ring->name, "%s-tx-0", netdev->name);

Moreover, we do not need NUL-padding as netdev is already
zero-allocated:
|       netdev = alloc_etherdev(sizeof(struct igbvf_adapter));
...
alloc_etherdev() -> alloc_etherdev_mq() -> alloc_etherdev_mqs() ->
alloc_netdev_mqs() ...
|       p = kvzalloc(alloc_size, GFP_KERNEL_ACCOUNT | __GFP_RETRY_MAYFAIL);

Considering the above, a suitable replacement is `strscpy` [2] due to
the fact that it guarantees NUL-termination on the destination buffer
without unnecessarily NUL-padding.

Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
Link: https://github.com/KSPP/linux/issues/90
Cc: linux-hardening@vger.kernel.org
Signed-off-by: Justin Stitt <justinstitt@google.com>

---
Note: build-tested only.
---
 drivers/net/ethernet/intel/igbvf/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 7ff2752dd763..fd712585af27 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -2785,7 +2785,7 @@ static int igbvf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	igbvf_set_ethtool_ops(netdev);
 	netdev->watchdog_timeo = 5 * HZ;
-	strncpy(netdev->name, pci_name(pdev), sizeof(netdev->name) - 1);
+	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
 
 	adapter->bd_number = cards_found++;
 

-- 
2.42.0.609.gbb76f46606-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
