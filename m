Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC6C7DBCB1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:35:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 611AC70B70;
	Mon, 30 Oct 2023 15:35:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 611AC70B70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680120;
	bh=trxk7ds1ZbTFq35ZfKEOkTAXMc4hhc7+gEL5g62Sux8=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ejZVQeCbERueP90Gu9gqXJGFg2tfX0AkOb2EhOjRWWzJntRnYHJaJUnG1hSzo1pg9
	 fPv9pvo/mZkLCPebqqJ5v7Moq/19QchM0D6OOuKqnTCKR0gLLGgxE+9XFdSuJ2KPwl
	 8O3WPsTambexph8cuyKygHHun+h0ov0dhbhgcsBviJRG6iqUayUshFhnmWxgXiDRXT
	 Q3ndyKgxTz+IQZYEKaDmPaUdJa9IYAG4FWnryi0L433jPpaKN/a4EKJxWZZ85jTT1U
	 oqB7zlkOq1F3xAVUq19DjOJtwj3GXK8aAYZPR6PqaCcbd02vuStuAbvAtAyO5cPfOy
	 aXRZEuA6PJqiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T1bSvVDOq4qU; Mon, 30 Oct 2023 15:35:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4317A70925;
	Mon, 30 Oct 2023 15:35:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4317A70925
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 400911BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:40:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16C5F40960
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:40:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16C5F40960
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4OtUCHCc6hh0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 23:40:39 +0000 (UTC)
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4CAE64012D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:40:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4CAE64012D
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-da05c625cb9so217734276.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 16:40:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698277238; x=1698882038;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=z2yHYpXdKX/Z1PdTHNHNNkO8SEsjgfSsadT9YDZgRP0=;
 b=s+kwORnkWHm+UsfoIkDFy7N85hI352EAqESskbTRZPihASYzGZ3ZEkumwpoYgC3rMb
 37cHJ5YIWSXUrIvirNR2QIK+m5ytcihvnsLmpCIxp1Emm1M0/Yke4t7WX/ktTI5JOmKI
 UYICtUIcbIaOlGdb8SkRU69Vv08zFsCh3m1wNXNJosN8aG3pVrcQORFaEUD1KUNrkW/k
 k/AOIGYsZS66s5KmcUpWIELPSGAhxK7/Gcyv/G/knImfBiiJrN+9HFWKtP3OxaNEPf27
 gLB/N7BfOQgWbtzomdlgWqQvR9iFSwPAQzorm2LfWmrvGM0hvMeAmgsoUEzrp6AGn57u
 GDOw==
X-Gm-Message-State: AOJu0YzvpeO8jzlnVXYnM3FTq7gYA0uQgy+ccDLp6lbuo+G5xT2DXrPQ
 X0JhCljLXIa/xjqXDlm2RcZJUaurBuR4j0ERMA==
X-Google-Smtp-Source: AGHT+IEPHaIkN8H3iGQWkKfJ5NpCYcT3yYMmFh0PPi0IcMzsA3hF9JA14tymNgt30lyJsEwk/WiGn6lEwEr2E4Dzgg==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a25:bccc:0:b0:d9a:c218:8177 with SMTP
 id l12-20020a25bccc000000b00d9ac2188177mr365329ybm.8.1698277238101; Wed, 25
 Oct 2023 16:40:38 -0700 (PDT)
Date: Wed, 25 Oct 2023 23:40:34 +0000
In-Reply-To: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
Mime-Version: 1.0
References: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698277232; l=1707;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=n1veWIcKxGb7fuzlMSTmPKoEQaWG96C9Cgb9YzocQ5U=;
 b=W+dlkHRgIJMungJ97d0DNn75PwsHcGQp6OJdyQzjetsUzkUF+C5MUA4sHBdGuuzJqLmwBu8XE
 4b6P70t8H6LCSr0S2uDYGUmJBTSTiZLZFgaH2y2gkECIo+QpVCuuHfV
X-Mailer: b4 0.12.3
Message-ID: <20231025-ethtool_puts_impl-v1-3-6a53a93d3b72@google.com>
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
 d=google.com; s=20230601; t=1698277238; x=1698882038; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=z2yHYpXdKX/Z1PdTHNHNNkO8SEsjgfSsadT9YDZgRP0=;
 b=3syZtyjddWRBtHTzvLStKkH+W5uc562WEkhHbATkJAKXvv2ZUnokXIquP6AFvEEK6d
 0Oi2bF2Ih5w/F42jfOedH+ILFzcmXYDUhXGWdOa8FsAUTNh3wjAlh37jQnjXhJvVxkHm
 nKrI9vrcsEtNK8JOxvZ5OC6/o+/+OsyFysQtjtifftfki0giJ5Iv6KWtxmHgCuSUpG3d
 1+UsYNJuAQSS1mm4B3r3ass9QS39Ar/6Za9Y3kRxIRa5HTN9+V/Bdxt/+RSmsXPWJkXy
 4VZGCi1TEHZ/JsDeOZkKuCsC6RmzUk/WZJ3hJeuakuvkPB/A4FHyFfh4gQ6Vvgnm4sfK
 sUAg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=3syZtyjd
Subject: [Intel-wired-lan] [PATCH 3/3] checkpatch: add ethtool_sprintf rules
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

Add some warnings for using ethtool_sprintf() where a simple
ethtool_puts() would suffice.

The two cases are:

1) Use ethtool_sprintf() with just two arguments:
|       ethtool_sprintf(&data, driver[i].name);
or
2) Use ethtool_sprintf() with a standalone "%s" fmt string:
|       ethtool_sprintf(&data, "%s", driver[i].name);

The former may cause -Wformat-security warnings while the latter is just
not preferred. Both are safely in the category of warnings, not errors.

Signed-off-by: Justin Stitt <justinstitt@google.com>
---
 scripts/checkpatch.pl | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 7d16f863edf1..1ba9ce778746 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -7020,6 +7020,19 @@ sub process {
 			     "Prefer strscpy, strscpy_pad, or __nonstring over strncpy - see: https://github.com/KSPP/linux/issues/90\n" . $herecurr);
 		}
 
+# ethtool_sprintf uses that should likely be ethtool_puts
+		if (   $line =~ /\bethtool_sprintf\s*\(\s*$FuncArg\s*,\s*$FuncArg\s*\)/   ) {
+			WARN("ETHTOOL_SPRINTF",
+			     "Prefer ethtool_puts over ethtool_sprintf with only two arguments" . $herecurr);
+		}
+
+		# use $rawline because $line loses %s via sanitization and thus we can't match against it.
+		if (   $rawline =~ /\bethtool_sprintf\s*\(\s*$FuncArg\s*,\s*\"\%s\"\s*,\s*$FuncArg\s*\)/   ) {
+			WARN("ETHTOOL_SPRINTF2",
+			     "Prefer ethtool_puts over ethtool_sprintf with standalone \"%s\" specifier" . $herecurr);
+		}
+
+
 # typecasts on min/max could be min_t/max_t
 		if ($perl_version_ok &&
 		    defined $stat &&

-- 
2.42.0.758.gaed0368e0e-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
