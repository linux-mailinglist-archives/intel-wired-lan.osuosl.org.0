Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F78602846
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 11:25:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DEE38317B;
	Tue, 18 Oct 2022 09:25:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DEE38317B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666085145;
	bh=QYcmjn+OzqMX0z7nok5I1g1R9nJZg424ZPI98/ICBSA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6hHR+MQO0qS/uuQ5qVO1sHUWkDXYWdAOlcNjfgfiJR0EoCnGOSalTFoaCTNtrkruF
	 LyYNuYo7ncvcdTrkUu/a3ss0W4lTXqVjOTDq2fcef1bMRfh60Xn7UdzcfEZjTaQvjy
	 vWDcKyWca0nboS9Y7k3Wv4AqCos6UnnQH5NMr7mHI9e4kT2NOs1ZjKJCr71Y4Evh5/
	 uS0ku+FZoZksYXjPQR46jQ/F6Uk8p4YFmBIk1RYRoYx89s3a3uas9ThsCb8le4WouO
	 4SnZlgetnGcpQALy1QmgA37f8/EzO4v4N70SHCaCUUhbBK71r88SyVBwzxnrMI45uD
	 pgN2lQ1uPniEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iRH5ArVyYxZL; Tue, 18 Oct 2022 09:25:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D64283133;
	Tue, 18 Oct 2022 09:25:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D64283133
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 387501BF281
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 09:25:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 11C6083133
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 09:25:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11C6083133
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5HFO0egrD6dY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Oct 2022 09:25:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46D35830E2
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46D35830E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 09:25:30 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id l6so12798451pgu.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 02:25:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=smgOzVjWqVIBBGSbk+bAqgSK+ImSgqCNvhjx9z8C2ds=;
 b=jo5VCTWnYwpuTbC7G/0qpDw5iKMy2pojlsx4JqDlMtXytLA5d2GoSbPK0ZhvvjFtLu
 G6Nx62lOB646yxpBzQm8qMAejY0MVYRa46/Mg8XpHKeZrvwvSkDsHAtRIc84K6c7e+4b
 DK2Lgr/Fqt0N6QhTXu3l7A8eCwScCAcN/ZhYtqAiZWf5DUINOeiXpVC6PYvA/AuEpVUW
 8EPVaXXNIlaabhdkjt7tVSn8A7zcZdbRaPP2nw3fzP+x91On1qfiqmpOQ6lIYFwlY8TN
 Wr4u5bf4VvTPFRwreXyCljHInryyQZJyBgtGvzq4pysJUVfE8ewVikEjAhGmAr773oex
 vQjA==
X-Gm-Message-State: ACrzQf2OAjJoGknSXdxnjjkVV8z9XGGt2T8zl507cVzgjW9lUIVbWkMA
 zN3bujjwuKpza0xRXDRBhdG5uA==
X-Google-Smtp-Source: AMsMyM7ajtyHBS+TRXtSQEwKaZpL/hbRdnb13JjeLJa7NsINcenQRY+eAz3SpJVDbIWZtAyazRaKaA==
X-Received: by 2002:a63:4307:0:b0:464:a24d:8201 with SMTP id
 q7-20020a634307000000b00464a24d8201mr1911063pga.116.1666085129704; 
 Tue, 18 Oct 2022 02:25:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 m20-20020a62a214000000b005609d3d3008sm9039968pff.171.2022.10.18.02.25.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Oct 2022 02:25:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ruhl@www.outflux.net, Michael J <michael.j.ruhl@intel.com>
Date: Tue, 18 Oct 2022 02:25:23 -0700
Message-Id: <20221018092340.never.556-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=667; h=from:subject:message-id;
 bh=fe46aJaXIAy8NFr6NaDoWVctMGkMgluCIMsXEg4daWs=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjTnEFofbxhgG6+Oz/mqUhGoxgqnLDQsrMFGGpTPSL
 oHyi/4CJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCY05xBQAKCRCJcvTf3G3AJvpsD/
 9e+QOmvIyz2MVEyVrcUOvmy4j+puTP/6PIBx8eB78oe+SxMHCsGBBNxooJbXME0Mw0qM5zEHzbks7a
 ND4MP+VamgnU/UfGcxGX/E9VnNcPHieQmpuAikOhqYsKaFYvuVohgJhHsDKf/MevMr9ZH1Zxa/efi7
 gYUQa0QhYgT6mQ8FJZHXZdpVuAa09KMktmCO28YKnF/v1/qGMJJzE5X3ekdi4lvgxw4YGXLBZuariM
 Ky9jvuQrz6BE1TMRWBdMadND9UaBjhOGdu2/vPI5ZmQ6fO2n8fM//mX5C8jDh8M+Fuu8JdF290B8ci
 lveHjW12jkXfGrnnZNLew69uvexfjw1GIJRFzqFNJR+Hmlcv4x4SSBJwxhRoVB3aTpeLiMaQJIqjau
 tyKUPepOLR5jKxzOVvQ+cwJigmY1E4TxY/YLpBqDU5PAnyOxxIbzSQRe2B/bkTa4WpJ5P1lqwvybLc
 Qn+ffjYdd23f279GWcGonSAGKCzShx0QIJ/NQTZD2a6+uSvnG0nzNJ5+PosRlr1YZxC0yGjfDrfa7D
 Xp5cRYOMhDXFwm+GPH23JnsrMDK4pwHAde8HAiPYp00eN1efRiOSvHjv0j0bvfQS505N7wQowiy32c
 mQC5kJf5z26Ib8AqFERv3eMDM5Uwbyn3NapEjQh48vEXIg4KkNwdzcKyKcrA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=smgOzVjWqVIBBGSbk+bAqgSK+ImSgqCNvhjx9z8C2ds=;
 b=Prf7xxc8c6RO6831Ks9ssdZq9ofHZAcpE0hdIQ+d1AkuWLxyhtob5UiyGEajV/rAI7
 xgDSn/tg2vMoGP9+Y3mziadWZ3N28bU5CYJXHnoeTqq/NuzQMxi5gmOudYdPOw+X5Gxr
 ndG4v/RSevGxcD8K/0XJ67T9qNiNuXCgmy9ao=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=Prf7xxc8
Subject: [Intel-wired-lan] [PATCH v3 0/2] igb: Proactively round up to
 kmalloc bucket size
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
Cc: Kees Cook <keescook@chromium.org>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

In preparation for removing the "silently change allocation size"
users of ksize(), explicitly round up all q_vector allocations so that
allocations can be correctly compared to ksize().

Before that, fix a potential Use After Free under memory pressure.

Thanks,

-Kees

v3; split UAF fix from bucket rounding.
v2: https://lore.kernel.org/lkml/20220923202822.2667581-7-keescook@chromium.org/

Kees Cook (2):
  igb: Do not free q_vector unless new one was allocated
  igb: Proactively round up to kmalloc bucket size

 drivers/net/ethernet/intel/igb/igb_main.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
