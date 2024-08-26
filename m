Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFAA95F8CD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 20:10:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C13C040605;
	Mon, 26 Aug 2024 18:10:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rrf3OtsUUfmJ; Mon, 26 Aug 2024 18:10:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0218C40586
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724695850;
	bh=+2F7nz3UMUAFR15Vkm7j1Cul/J99ot3Q3o9XowrrRt8=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TNNprTvJJz488pPvhANaujFSRxIfoSEN+udKr1nY/Ycslyzsh6oS5DkXoM4C7vSiU
	 EMM+/kwZh2RoKFn349rQGBxbxGgkYxC+btGn9+AATk6VbwjFbzfuD3UZNfLGR0pnoy
	 WcWG+9x4cUip4FIvC6EiE4C6z6AZ1GOnOVZO+kdSQaBZF0Brgp0yItksWSs667WJRN
	 F5HkJ1ldM2r6jRe4thFM7Pp378YcRFm/7Y3ScVtAxec15O8XVPSCKFb3atChUX6oNR
	 q98ZbB+OJCXLP7eaXVju/bpTnO6SE77CsdbRgcQ05BNe24zBGETh12X8aLZ0UEU12V
	 AYX0KBvdM8Vog==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0218C40586;
	Mon, 26 Aug 2024 18:10:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 828261BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6CEF640602
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TqtkUExLePmZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 18:10:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1149; helo=mail-yw1-x1149.google.com;
 envelope-from=3jcxmzgokdyai6jkfreoduckkcha.8kiejpah-sena9-h6jheopo.koqkoh.knc@flex--manojvishy.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6921E405F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6921E405F2
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6921E405F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:46 +0000 (UTC)
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-6b46a237b48so97825947b3.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 11:10:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724695845; x=1725300645;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+2F7nz3UMUAFR15Vkm7j1Cul/J99ot3Q3o9XowrrRt8=;
 b=aPQ6hcalJpznwibt/W+m36ot2CNTjTmgdchwK6/ENVt+/MOINR4ZHyQ2oA99uYrV0S
 98ymnwl6YtdRfCJPNWhziSz14EKgClQ5PBWsm49yLCAtY7Na+s9zEIW45u2bWA6/miVa
 OynY1QGzVhiJflhrUN9kcUK/DpWjeB+Xqm73IN4ek0z1scsMtxf9dAwwhT37iAgSakub
 OlioMBrBW+Z7D2JQXjqUYMKbGF0QZctWZARHf99lSk5Mc3nr5nSJq0IgEmQHPoT2A6yH
 HzGZpnI7QaBoaG4OOr3xFg33CWjQdQOFE3kXWP65xucq3KHRDKti5YlZCNvA4KSXtcZm
 R25A==
X-Forwarded-Encrypted: i=1;
 AJvYcCX+dKn75HcteO/zKY/i68ZXQIgumQbPyqhuqP/QN2G/3i8VYu26TLTO9R67xgePN0m66sbkY/eDLwBjE8QG71k=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxICOUDPFRqxkNNaf3ixmH2/3kRrveJGgPeH+hfooiN67fGPnWM
 5+NYbXETqSd8LDP/hPPC/I4rRTYYkjbjl7oFqSiN7SrGPCe471sv2I71GrPM98Dlxeq1wKuh6FU
 mYMkMrK5YfkFE9sFUxw==
X-Google-Smtp-Source: AGHT+IH1ALkhd6H0T9zDYc5JDKk/4XNxqMfJlwCfIvNtsnq/kvN4ZDenJppUZ+Y9eW49jxiGQRirEW+rHE7gLg3t
X-Received: from manojvishy.c.googlers.com
 ([fda3:e722:ac3:cc00:20:ed76:c0a8:413f])
 (user=manojvishy job=sendgmr) by 2002:a05:690c:6e09:b0:6b2:7ff8:ca3 with SMTP
 id 00721157ae682-6cfbaf3a1c9mr97067b3.4.1724695845308; Mon, 26 Aug 2024
 11:10:45 -0700 (PDT)
Date: Mon, 26 Aug 2024 18:10:32 +0000
In-Reply-To: <20240826181032.3042222-1-manojvishy@google.com>
Mime-Version: 1.0
References: <20240826181032.3042222-1-manojvishy@google.com>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
Message-ID: <20240826181032.3042222-5-manojvishy@google.com>
From: Manoj Vishwanathan <manojvishy@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1724695845; x=1725300645; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=+2F7nz3UMUAFR15Vkm7j1Cul/J99ot3Q3o9XowrrRt8=;
 b=4MLlEOCkNmu3IHFWX7E48oHHiCW+dix3CpSNyXfjcttjojQSuXtNxPy6k/VL5+CR7e
 IhoETao7BynrMvl4A5+WcvcbY0HjwvufJ3/PLiZ2Nvmy4z7hb6exoX5yxS2xfUAh9xly
 45CAS14JqD59/MZtg3yv2Z8Z1RfL75FhMnM4wIcDBxHc43K3H9SEu1M3qh9jTZgVedLG
 FsS5k/rJVV+5j+1SQX4N1z9+r0/VO3tHqCoIcSIH5owj+1ulxHxVBXYe63xcJdw3IEN4
 zy7erYJzYarGaC4f6rJvdWt1FUJxqvn2WJboUFu6EXCk1GI11aOdvMT1nLV3nor4o0/Z
 iR6Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=4MLlEOCk
Subject: [Intel-wired-lan] [[PATCH v2 iwl-next] v2 4/4] idpf: add more info
 during virtchnl transaction time out
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
Cc: netdev@vger.kernel.org, Manoj Vishwanathan <manojvishy@google.com>,
 linux-kernel@vger.kernel.org, google-lan-reviews@googlegroups.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add more information related to the transaction like cookie, vc_op,
salt when transaction times out and include similar information
when transaction salt does not match.

Info output for transaction timeout:
-------------------
(op:5015 cookie:45fe vc_op:5015 salt:45 timeout:60000ms)
-------------------

Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 30eec674d594..d8294f31fdf9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -517,8 +517,9 @@ static ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
 		retval = -ENXIO;
 		goto only_unlock;
 	case IDPF_VC_XN_WAITING:
-		dev_notice_ratelimited(&adapter->pdev->dev, "Transaction timed-out (op %d, %dms)\n",
-				       params->vc_op, params->timeout_ms);
+		dev_notice_ratelimited(&adapter->pdev->dev,
+				"Transaction timed-out (op:%d cookie:%04x vc_op:%d salt:%02x timeout:%dms)\n",
+				params->vc_op, cookie, xn->vc_op, xn->salt, params->timeout_ms);
 		retval = -ETIME;
 		break;
 	case IDPF_VC_XN_COMPLETED_SUCCESS:
@@ -615,8 +616,8 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
 	idpf_vc_xn_lock(xn);
 	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
 	if (xn->salt != salt) {
-		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
-				    xn->salt, salt);
+		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (exp:%d@%02x(%d) != got:%d@%02x)\n",
+				xn->vc_op, xn->salt, xn->state, ctlq_msg->cookie.mbx.chnl_opcode, salt);
 		idpf_vc_xn_unlock(xn);
 		return -EINVAL;
 	}
-- 
2.46.0.295.g3b9ea8a38a-goog

