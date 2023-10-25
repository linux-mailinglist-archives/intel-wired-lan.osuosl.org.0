Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B497DBCA5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:35:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E46070B84;
	Mon, 30 Oct 2023 15:35:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E46070B84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680107;
	bh=FY2VtOKNmO06K2EEoatna08ISw9JFWeQb1EIZMwc0V0=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hzBNMw60BXT1XrNBU/HXHodDAcbrw509WeB41oAZidg9Z2rg7GR5CHJD3lUhN/xCe
	 0k4je4LlGX4vD/JQ7BwuiIvPnpDnP3fCxD/Wah2KPJ1MOr7PBQXFObd9Y2BSKF8dmc
	 tRBncYFgCMsT2dDBZc6XAa+TZZU+tXaMUjUDdg/G2qhfkyzfxyJhxpZv3w6HzOsJG0
	 Gvi8ZnGDBuHKO/H0np8AsOcx7JYvP6iWyy5CklulJo7Dn3ykw3HpzUZp9s1iRYjgQL
	 Wa8E7y4pfPD5qZQk+odRZhlrbaqK7mBIRw5jiyKMMRmpj/A2ZvGBZOYFGaqyIrpl8O
	 OnJpTIciC9BFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R9PaVWh39ZmI; Mon, 30 Oct 2023 15:35:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0AF457097C;
	Mon, 30 Oct 2023 15:35:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0AF457097C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B20521BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:40:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 800E281EF2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:40:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 800E281EF2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u7hhovMqCoVW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 23:40:36 +0000 (UTC)
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com
 [IPv6:2607:f8b0:4864:20::114a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A832E81EF0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:40:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A832E81EF0
Received: by mail-yw1-x114a.google.com with SMTP id
 00721157ae682-5a909b4e079so2719067b3.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 16:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698277235; x=1698882035;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oNMGb9FVii3IGjmd6icxEZoz/qRHnqOvKwptGS/KQfw=;
 b=NQaqsw/nFI7VPGt72HA0ShDtnoKUoUNF+C44PiuUyPWvYJpI/e9+Lpl8VkQ01UFePL
 OfV1POCJ817RRrXQ3OZTlZT29HPyDu5HSTMM5+nNccSCalji/nvHH0JfN9HnpcjfQkgb
 NVxx5NJLBdHevO7W2Mtd8A34oYdgO9WdQaownN5FKhelw+z3YBumtB/1e8VsQbPVAlT2
 vNjK1zQzFAs7pwmrtAiMkm2KxCPrEfPtPdQjPQZ6JtutqdGdxiDD+lFBL0fj9jd2nugd
 yRUW81mhELztEh1YbO6q/p/jrILXFr+UL/4g5ntz78vjSm3DMGf+r6CHfvC4XZCTlUKg
 gq/A==
X-Gm-Message-State: AOJu0Yw3NpFpQyrQ2iBXneeENmcNlTng6xrCFw/18DatIovksIzy5kw3
 IthGo87ryS5lI20pW5HeCnwV+hYF2h7Ps+Deew==
X-Google-Smtp-Source: AGHT+IFJIK76hUmK9IMs6QqAzA9uOFIFG/qocsEdNxKZvGSrcgX5hg8Q1Z7MU31OebIcNGSSzaWsrnXdem0jyNbySA==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a81:a08c:0:b0:57a:e0b:f63 with SMTP id
 x134-20020a81a08c000000b0057a0e0b0f63mr380188ywg.7.1698277235043; Wed, 25 Oct
 2023 16:40:35 -0700 (PDT)
Date: Wed, 25 Oct 2023 23:40:32 +0000
In-Reply-To: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
Mime-Version: 1.0
References: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698277232; l=1734;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=Q2b3CrzFCZg2hyLmS5X7LihvuuU/XPSccLiVK8DkHC8=;
 b=RTzd6uTUtmb8/kblStBypVrgGEsj0nKal14coZdooyBDEQzz7JbHzkUsxY+9+36UkzwkB1uJD
 FhNgS/gDVBpB4j8vHHp5tVTFvTU+oud2hDTmH8UYyz0X9J+PtSrHqTO
X-Mailer: b4 0.12.3
Message-ID: <20231025-ethtool_puts_impl-v1-1-6a53a93d3b72@google.com>
From: Justin Stitt <justinstitt@google.com>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shay Agroskin <shayagr@amazon.com>, 
 Arthur Kiyanovski <akiyano@amazon.com>, David Arinzon <darinzon@amazon.com>,
 Noam Dagan <ndagan@amazon.com>, 
 Saeed Bishara <saeedb@amazon.com>, Rasesh Mody <rmody@marvell.com>, 
 Sudarsana Kalluru <skalluru@marvell.com>, GR-Linux-NIC-Dev@marvell.com, 
 Dimitris Michailidis <dmichail@fungible.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, 
 Salil Mehta <salil.mehta@huawei.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Louis Peens <louis.peens@corigine.com>, 
 Shannon Nelson <shannon.nelson@amd.com>, Brett Creeley <brett.creeley@amd.com>,
 drivers@pensando.io, 
 "K. Y. Srinivasan" <kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Wei Liu <wei.liu@kernel.org>, 
 Dexuan Cui <decui@microsoft.com>, Ronak Doshi <doshir@vmware.com>, 
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 Andy Whitcroft <apw@canonical.com>, Joe Perches <joe@perches.com>, 
 Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
X-Mailman-Approved-At: Mon, 30 Oct 2023 15:34:59 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698277235; x=1698882035; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=oNMGb9FVii3IGjmd6icxEZoz/qRHnqOvKwptGS/KQfw=;
 b=wQfKz6Zkssl+axIWmNEgQ2lzUNVvsMDCVmJ+aA/D0L0gJJh0PuFcGltq6/TyUVs/PA
 +1JYCPYuGwd9fPaDwH2raeule4KpnKgUsdXGoEjPe58gLneAnIe2jHcIKWjdNYR8ydv9
 KNwL9+UUvEPVUT+Ati/xkNPuFY+CfiSvsdhCFgWUMldYESBYeejpet5Z3wDGc6eq0TeT
 pPLXNuqQuxu1nuC2kaDdT8etuX/FvSj1Nvc7b7ufca1Bt000lBDslRIffkCLC4AQgCmh
 gMrrDGf90w8RK9BpzWp68S3ZbdTYmvQfUBva7kwI55jzIgt+JydK7+1dvifrJ1yxotPV
 h1qw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=wQfKz6Zk
Subject: [Intel-wired-lan] [PATCH 1/3] ethtool: Implement ethtool_puts()
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
Cc: linux-hyperv@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 netdev@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 oss-drivers@corigine.com, intel-wired-lan@lists.osuosl.org,
 Justin Stitt <justinstitt@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use strscpy() to implement ethtool_puts().

Functionally the same as ethtool_sprintf() when it's used with two
arguments or with just "%s" format specifier.

Signed-off-by: Justin Stitt <justinstitt@google.com>
---
 include/linux/ethtool.h | 13 +++++++++++++
 net/ethtool/ioctl.c     |  7 +++++++
 2 files changed, 20 insertions(+)

diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index 62b61527bcc4..fdd65050bf1b 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -1052,4 +1052,17 @@ static inline int ethtool_mm_frag_size_min_to_add(u32 val_min, u32 *val_add,
  * next string.
  */
 extern __printf(2, 3) void ethtool_sprintf(u8 **data, const char *fmt, ...);
+
+/**
+ * ethtool_puts - Write string to ethtool string data
+ * @data: Pointer to start of string to update
+ * @str: String to write
+ *
+ * Write string to data. Update data to point at start of next
+ * string.
+ *
+ * Prefer this function to ethtool_sprintf() when given only
+ * two arguments or if @fmt is just "%s".
+ */
+extern void ethtool_puts(u8 **data, const char *str);
 #endif /* _LINUX_ETHTOOL_H */
diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
index 0b0ce4f81c01..abdf05edf804 100644
--- a/net/ethtool/ioctl.c
+++ b/net/ethtool/ioctl.c
@@ -1991,6 +1991,13 @@ __printf(2, 3) void ethtool_sprintf(u8 **data, const char *fmt, ...)
 }
 EXPORT_SYMBOL(ethtool_sprintf);
 
+void ethtool_puts(u8 **data, const char *str)
+{
+	strscpy(*data, str, ETH_GSTRING_LEN);
+	*data += ETH_GSTRING_LEN;
+}
+EXPORT_SYMBOL(ethtool_puts);
+
 static int ethtool_phys_id(struct net_device *dev, void __user *useraddr)
 {
 	struct ethtool_value id;

-- 
2.42.0.758.gaed0368e0e-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
