Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C129FF5E0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 04:53:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 330EE40241;
	Thu,  2 Jan 2025 03:53:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HP8KaKSrEC3F; Thu,  2 Jan 2025 03:53:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EF6640233
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735789994;
	bh=IvaCHiysk/cukfyPyKRBsGPePbIYTzKM+yFnyaXVpHA=;
	h=Date:To:Cc:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kjZIO6Sh+HG7syxNmmjqGTvF8cfibAA1Ecc6atIOPdEc+x1fa2jcATZvUK4mHxIv6
	 R+tM2aee4DwNoeG+cSeWAhl8Jd/kEJAkjnr/FkQZI90i1t15f0GDalVQ66GQDkR1Hn
	 I2Vj/aZ+nl/sOMgGecgP4D8gqzaHY7mpGa3+Q6RioX4QrMTALhaz0J3IqpZ7KqFkDf
	 EaoH+PKVgdS0Hpxp/AkB9xg6VcRkkIH5qr1YB1cKHTJKJQ/XgVK2ec4zu22eNEoCqD
	 c1doWI/VVJez1MsbF6A5wvx1wPOz60i2yw0e6nFtDRQMuLAhXJTGW+AmzNFnVHMh2m
	 L4uxBRU47ToWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EF6640233;
	Thu,  2 Jan 2025 03:53:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B852F27
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 03:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8348A4021F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 03:53:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WwjV-sYh1cjx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 03:53:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::631; helo=mail-pl1-x631.google.com;
 envelope-from=haifeng.xu@shopee.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8221240218
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8221240218
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8221240218
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 03:53:11 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id
 d9443c01a7336-219f8263ae0so106688425ad.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Jan 2025 19:53:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735789991; x=1736394791;
 h=content-transfer-encoding:subject:from:cc:to:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=IvaCHiysk/cukfyPyKRBsGPePbIYTzKM+yFnyaXVpHA=;
 b=XqGJ2KIfbhDsIMTsDNkvFSIjRsqM/FgH+JyurPnCHV+Z/AvQgIFbpEdvV2y6krJ0cn
 N/59p9XcNk+9PuVAZSpoeGyfNxQ62Y23olx4tAxNwl76f9eyxUVJpktZ0SVnpE84wSv+
 +ldjU4NvOG+5t0vsF9fi0s0NIA+ObGzORIfVzLX+6Bol5vWDezSGOJF5WlwO5ua9YOJ+
 buElx4TeD6FJJyl3HH+YNCKupxhUL8d+TsQ5zC+WQyFZZgglrEHk1rphZgQcJbd/YTLm
 5YbQc/sP/vl8cEDsc1wfUWrTceB1yJRoIYhSx9lXlQaB5AiP9PSTk0ga4WOmFwrVho2d
 XlRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVruMoevwYd+k8jecGx2aQgsM+k8+GEgCcZPXCbQW3IBFKA/NZ6bpqXdGntf///4frgO7RwiafQ/4sh5h/oSgs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxP5+aOz44Hbf18UcsAdqkKR9OdLi2/WKLgJpY8ProTrVzWSYFN
 KlmwmDhbiPGYsu7IY2wg64HdcKsqHf3+u7nQzziR6TqcYBhzFwHmTitZ0+vBqDs=
X-Gm-Gg: ASbGncsddMEfIsKygDYizheUEnUZpgMEMTFUm2GdmhtPTa5gTX1B2SAtCacZMrFYVW5
 yfi/WqLF9L2CQZFscfHvedZGbDahWYoumjkyn4LfFwvIelN9HHnXZi4pNiFV2tsb7oip56Wam79
 A/ZHi3TRH+dZhrp3kFF8jY1RM051N17hV80H9mlsuz8YYVt8m0fwtPVrZxJlEh3oDZqrCNEEY8V
 DEOoGxtukAs+d7hwS/TPREracI0WtZ91BwPdmHwHg40KMcpeUW/veyx/0APHQgtS3Pj4vnGcb9P
 P8lyTzS7VcEt/EqIKv0tRDM8CvaaXESFQbaLYndn
X-Google-Smtp-Source: AGHT+IFrrh50rCp6cHG8qhSvTaRfta3Aascv2hZcykC2O0A/TWJBEw1M2DipNVGd8VFMavzOXczOXw==
X-Received: by 2002:a05:6a20:7f99:b0:1e0:cfc0:df34 with SMTP id
 adf61e73a8af0-1e5e0470226mr65407285637.16.1735789990624; 
 Wed, 01 Jan 2025 19:53:10 -0800 (PST)
Received: from [10.54.24.59] (static-ip-148-99-134-202.rev.dyxnet.com.
 [202.134.99.148]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72aad8dbbf6sm23254920b3a.111.2025.01.01.19.53.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Jan 2025 19:53:10 -0800 (PST)
Message-ID: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
Date: Thu, 2 Jan 2025 11:53:05 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 ", Przemek Kitszel" <przemyslaw.kitszel@intel.com>,
 ", \"David S. Miller\"" <davem@davemloft.net>,
 ", Eric Dumazet" <edumazet@google.com>, ", Jakub Kicinski"
 <kuba@kernel.org>, ", Paolo Abeni" <pabeni@redhat.com>
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
From: Haifeng Xu <haifeng.xu@shopee.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shopee.com; s=shopee.com; t=1735789991; x=1736394791; darn=lists.osuosl.org; 
 h=content-transfer-encoding:subject:from:cc:to:user-agent
 :mime-version:date:message-id:from:to:cc:subject:date:message-id
 :reply-to;
 bh=IvaCHiysk/cukfyPyKRBsGPePbIYTzKM+yFnyaXVpHA=;
 b=fcRVLE/cAep0QgoMQuywO5oGKcbli78Tlr5UEZnvpN9AlAsS56vg2P4WMpd2/+dpx1
 IX8iMaxcW/9Rv0uECqoewNLRld8TbfPFHCQbi3BmVfx+AA00W7IWnLhOY9mFwU1x5OB6
 RRlypTvGFhCl05Ok9i2hc0KmaO8Rcgcr5Y3iTDnOql8VeiLoGNEmS6l6oDG8W33wFd4Z
 qZt9KrhDisr/j/pHcS5/DdGle2boyvBnku6aX8wps7L6rb2Tfshpst9oZ0RD+B8vtD8U
 Io3PpAKlHFpePzlMLsvCn9XU2sFKH/Kg7pcztg6Zaw6hWcboR7yy3rz3gJbqxxgpG0Ai
 I3nQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=shopee.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=shopee.com header.i=@shopee.com header.a=rsa-sha256
 header.s=shopee.com header.b=fcRVLE/c
Subject: [Intel-wired-lan] =?utf-8?b?W1F1ZXN0aW9uXSBpeGdiZe+8mk1lY2hhbmlz?=
 =?utf-8?q?m_of_RSS?=
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

Hi masters,

	We use the Intel Corporation 82599ES NIC in our production environment. And it has 63 rx queues, every rx queue interrupt is processed by a single cpu.
	The RSS configuration can be seen as follow:

	RX flow hash indirection table for eno5 with 63 RX ring(s):
	0:      0     1     2     3     4     5     6     7
	8:      8     9    10    11    12    13    14    15
	16:      0     1     2     3     4     5     6     7
	24:      8     9    10    11    12    13    14    15
	32:      0     1     2     3     4     5     6     7
	40:      8     9    10    11    12    13    14    15
	48:      0     1     2     3     4     5     6     7
	56:      8     9    10    11    12    13    14    15
	64:      0     1     2     3     4     5     6     7
	72:      8     9    10    11    12    13    14    15
	80:      0     1     2     3     4     5     6     7
	88:      8     9    10    11    12    13    14    15
	96:      0     1     2     3     4     5     6     7
	104:      8     9    10    11    12    13    14    15
	112:      0     1     2     3     4     5     6     7
	120:      8     9    10    11    12    13    14    15

	The maximum number of RSS queues is 16. So I have some questions about this. Will other cpus except 0~15 receive the rx interrupts? 

	In our production environment, cpu 16~62 also receive the rx interrupts. Was our RSS misconfigured?
