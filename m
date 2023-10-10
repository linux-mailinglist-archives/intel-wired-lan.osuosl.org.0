Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D53D7C7647
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:07:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC1E8611C1;
	Thu, 12 Oct 2023 19:07:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC1E8611C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137639;
	bh=T3W6ySDJoO+BZMyKu7OVIOBk7A3ViUUAkg7TXRV6Ou8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Rs5U+QVApcyA5wPFEmtiLgwLDhOrZqvcpy2mNGTUZxT8xchUcHJHl5HbxD0obd3st
	 ErbElYw2jbbwPusQ70N9uGvICmVwaPI+UqmpxosO+cp2YlDSbRsHM0LsqkY6OObrUL
	 UJ02f8mrliI0VJ+8SYtAvUHvJaN7KsAUHsAxZfS9lCp/Js6yWvru3lP9lPkoHUEdtR
	 vigOrQhKLKVCcSsUD8i0PPqVYWsE+CFTRjV2JoD24FYhgrRTe76uy9oQgj9cEFortX
	 Gl3jkzk0lvR6zs1f8gC/oGZLp5zF44Xv9uEbmeak6wa2tjQZhtC/kww6pmemfW/0TM
	 CeHP2FFXNpG/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KxdZ3rve4vvk; Thu, 12 Oct 2023 19:07:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E4C76105A;
	Thu, 12 Oct 2023 19:07:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E4C76105A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DABE1BF310
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:15:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7539760EDB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7539760EDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vP_J0czi1Ob4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 21:15:41 +0000 (UTC)
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 88CAC60E96
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:15:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88CAC60E96
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-d9a4fb3e096so1875438276.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 14:15:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696972540; x=1697577340;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=inAfHUFES32Bj4C70GcKsE711OPK+t9RMjXtNQ5VszM=;
 b=WvpcwO0PcfqQnjWDpHjzjRVEaK+XGzQ24JY9LunBIpc0fLo3HLx2TeZdpA4vBAd9q0
 YnWEqHC5R1HF1ToCrWUSV202c3wzDOzn1MWcFeO+e/l4KpbDHuQP+XN/seVT7lHiIrvx
 ukuank66RFeueva/nowtgZiPvVX3ryYtWClQff0EcDfHq8Jbz51JDFA71PaOHbAZbP7B
 0f4malV2w3aj7NJj2OW7LjkaIegGCFf4lt9mKgtpwdkkthWX7yV09u7JjnFqbTFynwkj
 iQiafCon1Se3D+XGmWMb/cT5zh9lb1kVfVlPHsmreKURUmOqff+IC6ro3rDifFYJhL7E
 Uj+Q==
X-Gm-Message-State: AOJu0Yy7wVfVTHuGjdOg0yaPRbJWtPb3PplhlMVVRvmJ+ewbmebiR5E6
 ++hc6XCECOfiL+UXyCj1n7BZEkjCtGbrd28wuw==
X-Google-Smtp-Source: AGHT+IEMUv1TTDgqzDOYIq+Sw2rvHfs+0t2AabsWyLXy1VIOnuqASlfBZBLu9OJtzGdOmIIJ59zdUH9JxiXKqaoZ5g==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a25:ac24:0:b0:d9a:3596:a5e8 with SMTP
 id w36-20020a25ac24000000b00d9a3596a5e8mr87331ybi.7.1696972540475; Tue, 10
 Oct 2023 14:15:40 -0700 (PDT)
Date: Tue, 10 Oct 2023 21:15:39 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPq+JWUC/x2N0QrCMBAEf6XcswdJREF/RURism0P9CyXUCql/
 27qw8DOy85KBSYodO1WMsxS5KNN/KGjNEYdwJKbU3Dh6J13XKppmr6cTWZYYUVl1BG2D9GKF8u
 Qdh7vKMqJwxl9DO6S8/NE7Xcy9LL8m7f7tv0AuewH3oMAAAA=
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696972539; l=2229;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=aszC9coJ3ufDFemnzGBEFSljINDMKfOjEfDt2TlDPEA=;
 b=M0LjBlQz4apy3gyX2tH8Osydptr9lDj/JzxqU4f3aGIPfDCpy48DUAn7/iUFhpQnXafN44Mnu
 3bQ5fcJIVvbBVvaS1GZ/qGz8AcdS1uPFdCrtmQC0/k/kBHxCMuKuJiG
X-Mailer: b4 0.12.3
Message-ID: <20231010-strncpy-drivers-net-ethernet-intel-igc-igc_main-c-v1-1-f1f507ecc476@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696972540; x=1697577340; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=inAfHUFES32Bj4C70GcKsE711OPK+t9RMjXtNQ5VszM=;
 b=Ra262eZHjXyu6YNO45UMcigQz0bd6Kd15P5UbOexnkEpVwMkFriK/cFTpXf7LUOA0q
 SZs1NV05MJgib9NqYLQySR1W6gA1vyFxgb1GePsSUgzabuxgDtorqew511qJ6pE/Bdyl
 hhlrkloE8fzVZKk2STlWz0vueEDeDjW9k7rYWzs45u06C3RFi+UjB6zpFOm4Cw3XFMSL
 kd1hFzbUZDaWbx5NJ2rq1JKk8bhxSuMtdY51OxPL/IDUQiX778mnTIXswmSM+O8rUxn+
 JmkDM5/pu/CwwKGrR+rYfGdsteMvi0UcC0NjexaCC8x9UYIwQLG+ST/tCmEbkfNAqiVm
 LVMQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=Ra262eZH
Subject: [Intel-wired-lan] [PATCH] igc: replace deprecated strncpy with
 strscpy
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
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

`strncpy` is deprecated for use on NUL-terminated destination strings
[1] and as such we should prefer more robust and less ambiguous string
interfaces.

We expect netdev->name to be NUL-terminated based on its use with format
strings:
|       if (q_vector->rx.ring && q_vector->tx.ring)
|               sprintf(q_vector->name, "%s-TxRx-%u", netdev->name,

Furthermore, we do not need NUL-padding as netdev is already
zero-allocated:
|       netdev = alloc_etherdev_mq(sizeof(struct igc_adapter),
|                                  IGC_MAX_TX_QUEUES);
...
alloc_etherdev() -> alloc_etherdev_mq() -> alloc_etherdev_mqs() ->
alloc_netdev_mqs() ...
|       p = kvzalloc(alloc_size, GFP_KERNEL_ACCOUNT | __GFP_RETRY_MAYFAIL);

Considering the above, a suitable replacement is `strscpy` [2] due to
the fact that it guarantees NUL-termination on the destination buffer
without unnecessarily NUL-padding.

Let's also opt for the more idiomatic strscpy usage of (dest, src,
sizeof(dest)) instead of (dest, src, SOME_LEN).

Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
Link: https://github.com/KSPP/linux/issues/90
Cc: linux-hardening@vger.kernel.org
Signed-off-by: Justin Stitt <justinstitt@google.com>
---
Note: build-tested only.
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 98de34d0ce07..e9bb403bbacf 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6935,7 +6935,7 @@ static int igc_probe(struct pci_dev *pdev,
 	 */
 	igc_get_hw_control(adapter);
 
-	strncpy(netdev->name, "eth%d", IFNAMSIZ);
+	strscpy(netdev->name, "eth%d", sizeof(netdev->name));
 	err = register_netdev(netdev);
 	if (err)
 		goto err_register;

---
base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
change-id: 20231010-strncpy-drivers-net-ethernet-intel-igc-igc_main-c-26efa209ddb5

Best regards,
--
Justin Stitt <justinstitt@google.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
