Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 670BEC563FD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Nov 2025 09:25:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1203A40CC3;
	Thu, 13 Nov 2025 08:25:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vfJz0NoVkUnn; Thu, 13 Nov 2025 08:25:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E3AE40CE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763022302;
	bh=E29I21iTFgmKy+IbzDTMyuzYhhbOKWzxr4diSFn7ScU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CQ1ESGpsh4U1tATw8pZWmllIK3hyEdY86wwl6XW7MUumT7MWOd3dM5ynY1mgnYwGL
	 igwnFg/aV1MzBf1ulH1oIOf16TaipH1KzdASAcK6rOoqZUyTFbjxYfdb5u5pDMYYOH
	 m3LRX4Tvio5bl79G9jnTABCExJh8XxuwhW1Y4z7+oWUxC2Mkh2BTfT9uOf27MbdSJn
	 uqVZeKQ9Sa8wTQI701fzCRsuffPAmrVJyzCbbtwggcuTD/ZgSzvCBBGoCaZGR4G2GC
	 0Zz6+JTzFJft9Q4GsaK+IWeMWdRGKZv+nQPbs9cZCSfmhEbGiPDiDUfsJVgJhNtHrB
	 rRl96qx2TZKKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E3AE40CE8;
	Thu, 13 Nov 2025 08:25:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6FE80342
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:25:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6121B606F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:25:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e4eYlXC531UR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Nov 2025 08:24:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::533; helo=mail-pg1-x533.google.com;
 envelope-from=alessandro.d@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B7A6F6061E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7A6F6061E
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B7A6F6061E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:24:59 +0000 (UTC)
Received: by mail-pg1-x533.google.com with SMTP id
 41be03b00d2f7-bc1f6dfeb3dso327654a12.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 00:24:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763022299; x=1763627099;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=E29I21iTFgmKy+IbzDTMyuzYhhbOKWzxr4diSFn7ScU=;
 b=AILwF9nhtm9+innhOyFeq5r7OFPmYf1HlWagBfkUstgcVGwOH6HgcHJi8vT2YGr1jb
 FZ2FxmoppKzMem37+j9IitM/chjoBMUX3tBeNYTb8V9XKlO8FWpQO+Td4g7NM0QG69Qn
 BfPoxEy2kJH4UaCnu48QcXH5nfisrtb+byaNNuWNXFhCXWvld5QKZcvt85UgpArnuzHR
 1AmLFRbzZmbgW45AYmncKIUcTuGNeXtEHesha6m/ViJvoUUWZXyjiN9+ufcYGCjUf13x
 ODbs40DYgJSQgxiFUp5a3mlcpvOpvFe8QYF0h+UBZsYmqIEkYN12E4TGvkNS2R9i1jjX
 KUCQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW8Kum7BFA486jxG4HOMMWUMwUHRKthISeOuWYYP9/P/fk4iDpsdsnyN5ZMTWPMElUsyjCyRH6BBtudeOmeYos=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyRDSMjhfARtyWOnJ1o4f9HLCzRYdf8PZKBWGWOFVYnjjAvEOtY
 spPWMeusH1hLrJUtt3fR7HqGOX5Kgd7CQDHLxXjotw21mCr02p6LslpC
X-Gm-Gg: ASbGncs4CXw3UarvwYto3cIHocgWc5aeE/9Hf3pa55T7uZsiupQF2trtGn+TTUP3pq4
 JIWsvi1aXRLpQ8ywi1f0ursbFOjhznQjYHCp94kuw8S2IsbETffF4uuyyQ9TIbTfEG7wk80dft6
 0MgSid6Iq1qxwiM1iX7LGtgPgG4KMAOU54ONO2Cu95InAbjSvGofPOCZ2Z72W/sRBinBP8CNyQB
 akjr3s5S/Pim7P0JHptG8wgWRNYpMQAC3KxAQzTc8ZAwH+/7wW+Q5ufp3obeq9X04qO5AASPxAm
 5cWnT9WJvOE4DFiDEWFjt8jpFjWtQtDAiYCx5ac9e3tcY1UWGyGl646BUUtZG9AUVeDRFcIQGVB
 GcLt+jVxd7i8KWunHX+nFByOUx8xSnqx3FVSKpt0ol2RO71V64rhTTj4gZIHPkWKfB7KleO4RtG
 C4UJPnl75AXK08haPIVNPViJxmlFOyKOeNSBGeOqI=
X-Google-Smtp-Source: AGHT+IG6G8bRlTc+7WY76hJfvUTnoph43OEFDRSFR5ryUFHLWUxOfe6SWPhcIlsJWUCZ9XOhzdKiwg==
X-Received: by 2002:a17:903:110f:b0:298:34b:492c with SMTP id
 d9443c01a7336-2984ee1df94mr76201095ad.54.1763022298884; 
 Thu, 13 Nov 2025 00:24:58 -0800 (PST)
Received: from localhost.localdomain ([103.246.102.164])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2985c2b1055sm16332635ad.59.2025.11.13.00.24.52
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Thu, 13 Nov 2025 00:24:58 -0800 (PST)
From: Alessandro Decina <alessandro.d@gmail.com>
To: netdev@vger.kernel.org
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Alexei Starovoitov <ast@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Daniel Borkmann <daniel@iogearbox.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Tirthendu Sarkar <tirthendu.sarkar@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Alessandro Decina <alessandro.d@gmail.com>
Date: Thu, 13 Nov 2025 19:24:37 +1100
Message-Id: <20251113082438.54154-1-alessandro.d@gmail.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763022299; x=1763627099; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=E29I21iTFgmKy+IbzDTMyuzYhhbOKWzxr4diSFn7ScU=;
 b=jqFZ4/uFj4NvB71LEWL8WV5pI6EkZqwIz2D9hhAohtuHIZRLXcHzyZ6mL1VwvS8aSG
 J6PiXyw+XqmGRLYRZGO7jkLj4aWjGoF8dw29e+hm4XcoDyIV7ZxMw8uL58M8wJFtkfUi
 VWQ7QstOZPmqK8+knq77AzcOmV75XSp8ymfJQsMV6RWNBw+MGsaO0XfeMTO5sAzIY5Wo
 9t19zTHmmKyTJv23zc62QAo7ZiVudrNK/xF7OP3TI73lt95LmvB1bmbquPuHKuvCgYob
 VmwF7iby9kh1VRQtwLANJCX0lSkSgeENAb+P6ws1Adi13WMqn/z5mAhRBnTPDo50c/7Y
 H6Ug==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=jqFZ4/uF
Subject: [Intel-wired-lan] [PATCH net v3 0/1] i40e: xsk: advance
 next_to_clean on status descriptors
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

As suggested by Maciej, submitting v3 which makes i40e_clean_rx_irq and
i40e_clean_rx_irq_zc use similar logic and a shared function
i40e_inc_ntp_ntc() to advance next_to_process and next_to_clean when
handling status descriptors. 

I've left the rest of the i40e_clean_rx_irq logic unchanged or this
patch would snowball. I think it'd be nice to change the function to
work with local variables and update the rx_ring only at the end like
_zc, but seems out of scope for this patch. 

Changes since v2:
 * use common utility function i40e_inc_ntp_ntc to advance indexes

Alessandro Decina (1):
  i40e: xsk: advance next_to_clean on status descriptors

 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 33 ++++++++++++-------
 .../ethernet/intel/i40e/i40e_txrx_common.h    |  2 ++
 drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 17 ++++++----
 3 files changed, 34 insertions(+), 18 deletions(-)


base-commit: 96a9178a29a6b84bb632ebeb4e84cf61191c73d5
-- 
2.43.0

