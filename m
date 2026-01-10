Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF00AD0DD9D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jan 2026 22:06:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B4B460831;
	Sat, 10 Jan 2026 21:05:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cFRFld2HjArO; Sat, 10 Jan 2026 21:05:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD56A60846
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768079132;
	bh=qOm2Dco79W8CJqhRdT3ov73dnM6p4xH+R1QoW90QGkc=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=Y8yoJw7IrjisDkfnZVwI/6+O0Y2hZXzU3bj5KJDNbgX0ODVHHTMSi0jsXcz0deI+8
	 LZbVfEgD0XkOW+O78qWs/tY+uSpquBxoHS1uOsedk1h94PhPGKcIm1SLheec8jUZBE
	 2OvtU1zzbwSx2QSnQImHsJhCSUYSPZvUrBbQ3LVd5bmu5KwPFxUS11FR+LlX/x+G27
	 kyz6W7h8c4CzVrKRGYMfxNu73mLtTV10OvDMtE1qE/eDpQwvsPVejQ+RWlqi/jN5gT
	 Rpe8VF3uuwvahywyuU7rLf9rKajOvgHOHP8a+uk0VcO5oDEsMhiWQXw+OQn91MefJq
	 PQTj5O2Kgn5bw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD56A60846;
	Sat, 10 Jan 2026 21:05:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F4BA18D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01AA960831
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IBfbRmHcanmT for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jan 2026 21:05:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::534; helo=mail-ed1-x534.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1B0E9607E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B0E9607E7
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B0E9607E7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:28 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id
 4fb4d7f45d1cf-64b9dfc146fso4207774a12.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 13:05:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768079127; x=1768683927;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=qOm2Dco79W8CJqhRdT3ov73dnM6p4xH+R1QoW90QGkc=;
 b=f1bUj+yWH+HKm4/vYE+hr1H5EEyqwPQ6lLqvKov7MHyVI4MOfZFLyD8MdgQs2erkeD
 0r4DFODvgr12pEzZc59QmaUvsPnhLIyUPNrN1kMJTnj01lw9RF1lQmrMpOVcA9KaZR/i
 508lHRuabPibnstPExba2uuz5Mo/gFRrI7o7SUZ2yHo/UEp+kOAIa+n4qGVHqfXTHu0q
 of5yYbv5pmnALkQVs5y+95dahKl6uXuPTktmMzz3YIF+6mJq5cIdpkA+bBIg8Syw/BJp
 27RllKA7ERbZHaYACLgEMS4tPpFKKZL42poWcgklbKLnSkdJji5zSnpTUa7WEPNMS2FK
 o+Qw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVzO/GDqtxLnn7SGWlnIhQm9dUitdiuzrsj7/f2zxszsXGezMH1cHFG5KdfRQ8R6E6aAje1zXKNzcNFsesrVO0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz85qzc5wMo3O/9MqEW/KvxGnxfYhJ5LOHlZzwM8awKg4uX3ENY
 0Jttiy2lsJhVpwynvPb3j1ZmMuI+SedzuPOTspJdLufoRWUDw90IaeaXB3N96eDZ8DM=
X-Gm-Gg: AY/fxX48GzQiyeawNcM9PdJhjr61HJ7XOOGSian4epaPcP5di0czYdg4aCNrx9rVUtY
 /K9vJ6QCBZ31VF0ghrSDfei/5rvNM+NUW34XWcj8IhrJa55HoCn4OSGEX5MSdBhIrTf2BN7gjh1
 9FSgBxinO94OI6fM9tQvpRjq70Z2zdEUwHTCJ/XW5RhC+g+nbzMCfxHkBE5+gN8FnqMiw4S7V77
 CqOdKeeDw+s7X3oYXU+xtAyV4hLtwcC++h7NFkYxqiiXR+6XSqBz2o6ndalwW1Z1F9rJMPHL9ZR
 vrwwXmooBwTjTtbNwMU69TNb0toBK4P1WaGIyX4HIWOBrCfRcZhfFgLkX98vDu58++vn14sJl0u
 HiGnNFnzpGO4SGxIf7rwz6VDiAHVuIIZQqjuFkZXY0vHE4edKP9JrnXQfYT+J5JyTmyrMfq61xI
 b6/ebt+Xn41w4d1TYjOQElWHsYlCU/SI2KztcZv+NtNnAzvK1z4dxUTVD19nc=
X-Google-Smtp-Source: AGHT+IEEoQmWnDDRGqBo6ow/YqTGmki9h0Hp/wugoaNy4VsuTpMCu3HOef9yqHlTJ1K/zJx1Hlhozw==
X-Received: by 2002:aa7:c845:0:b0:64a:86db:526a with SMTP id
 4fb4d7f45d1cf-6507bc3d721mr13850443a12.4.1768079126946; 
 Sat, 10 Jan 2026 13:05:26 -0800 (PST)
Received: from cloudflare.com (79.184.207.118.ipv4.supernova.orange.pl.
 [79.184.207.118]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-6507b8c4c15sm13415763a12.4.2026.01.10.13.05.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jan 2026 13:05:26 -0800 (PST)
Date: Sat, 10 Jan 2026 22:05:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-3-1047878ed1b0@cloudflare.com>
References: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
In-Reply-To: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, 
 Michael Chan <michael.chan@broadcom.com>, 
 Pavan Chebbi <pavan.chebbi@broadcom.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org, 
 bpf@vger.kernel.org, kernel-team@cloudflare.com
X-Mailer: b4 0.15-dev-07fe9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1768079127; x=1768683927;
 darn=lists.osuosl.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qOm2Dco79W8CJqhRdT3ov73dnM6p4xH+R1QoW90QGkc=;
 b=XioL51LYdPoAkAKGho50M8lCB4ds/GmHQ6ci2mBAcOFB6pQoSLYsC6dtS10Q39ziPn
 4060ZF0wRfWWMNjTK/ZrJJxZGbcgyLJbGQxHSN56id9uUD0YrfXkxdfFq4RrFElW3wNj
 62V4HOqXRTbZ0kpgrXJW8qfUhpvdOovpGLQMLBLca0nnthgypSzwr4h21Fq2GeIANBFd
 mvAxHRJkClQMzfMAbwbuC06vBrdhY47yPWgM9hHuJa68FpQYtZSNtHpFVVBr+2Wefes1
 9WWZi4vgLd2SC47Q9sPeWOH/G+0UznBqV5H39HHRdRIp8WKoYzsU0wzjVfHKzQLFa1wa
 nnBg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=XioL51LY
Subject: [Intel-wired-lan] [PATCH net-next 03/10] i40e: Call
 skb_metadata_set when skb->data points past metadata
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
From: Jakub Sitnicki via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Jakub Sitnicki <jakub@cloudflare.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Prepare to copy the XDP metadata into an skb extension in skb_metadata_set.

Adjust the driver to pull from skb->data before calling skb_metadata_set.

Signed-off-by: Jakub Sitnicki <jakub@cloudflare.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 9f47388eaba5..11eff5bd840b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -310,8 +310,8 @@ static struct sk_buff *i40e_construct_skb_zc(struct i40e_ring *rx_ring,
 	       ALIGN(totalsize, sizeof(long)));
 
 	if (metasize) {
-		skb_metadata_set(skb, metasize);
 		__skb_pull(skb, metasize);
+		skb_metadata_set(skb, metasize);
 	}
 
 	if (likely(!xdp_buff_has_frags(xdp)))

-- 
2.43.0

