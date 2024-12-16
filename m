Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB799F3786
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 18:27:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB6FB60E41;
	Mon, 16 Dec 2024 17:26:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tT5c4Hg5iuw3; Mon, 16 Dec 2024 17:26:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E0EC60B26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734370017;
	bh=ws62IqXxwOmIXvue6QqDBdu01bZQNbrgvdYcyFWCQ+g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PfxRN4x1PKaiv2/HgDSz3/y2gFHU7bsovwimkAHeqsDw/bSyGQZSPXFlf2SbIoHoc
	 QrPdNUCoAtGRTMXy3fG7q2Yny4bsR6NT7CrOGvoQckMDxOTzBEjaFPkT2mXRrsTwRQ
	 9yFjdKsvwPYI8NHGXJC7FpCnjlqftQF9GWPh/vGHt/EXNG+zVfYWuNWqOmCLsL95+l
	 2Hu2SZXXU3CjvIuivJcs/QFVoX1lRwKaJGvq8S8/hiNmOmJgbX4YPOk21CfrCzvOtB
	 FVej79ckadrSGrpoDx0ongiSGyZRkrRshLEaFoGMBsCtlehxoQF5rX33KzirlArzQq
	 8dKYjxNQSf9AA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E0EC60B26;
	Mon, 16 Dec 2024 17:26:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D11FCE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 17:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 90E1160E40
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 17:26:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2yFdKeuMAyVe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 17:26:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=olteanv@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AB9E160B26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB9E160B26
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB9E160B26
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 17:26:54 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-436203f1203so3782415e9.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 09:26:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734370013; x=1734974813;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ws62IqXxwOmIXvue6QqDBdu01bZQNbrgvdYcyFWCQ+g=;
 b=edLQopjtKXWX21yUUGfvL3cphGQhREWhVYPCqXhqU5oLoymDo/PxqDPODyFwg5N+bJ
 ksqdYspVBlXWIGawti9sdTsxyc9wexe+e7LFRM8cmjQ1gMG6DR8+p42UEQyNtWko6Imz
 hA2iBkj1yDNkTf1jBdYsxMEturKUtzCgOiVsj81rKIoZgKfzfjMDBaf/tu0hWFQ4O7GO
 wgTLH0C1xgBZq7uOQEqeosYG9GupJGf/hSXkj6Fl+yTjUzXUvK3M6FfINeK9tf/qLTQr
 6Bt7d6xvV0SYk0zeaQLdcoSxwbQCwDFVCn8oiKaq079QkghimJAh2x1BpXZEDFoRfoqr
 Vb7w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVCydn5/Eum6MOTBIz0Lz7prBuvhvEtX24M0WFB63KTw9FtKdJTBoSQ4c2VSC/pkN42scUKFV3Dgw8uUPGzswE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwnGsAnkLa9Dpghz18pem02pZVncXUcI/IrBJN54td4CD0z+eNq
 prZT5yeUdKuC5qANFNXrwkJfo2VGP9WHn7ITKmUNeiBC6A36d6fN
X-Gm-Gg: ASbGncv7yDrKPDPT3VY1OXdFIZbOfj4ebSiBSfPHPnyBmZpdAZBzdy7gU1dH+OCawGf
 y0dFRS8A5GGdaAdwjaEdLRwJ56n2YodFE5S7KVay9dLJB0DVQci8+1WqraQMzm1mrTwdf1NmrUZ
 2iT7iMHSdjpdZKf46w2b/oiZW4Jjps20SoDJ01tKTcVzP6NkXySq7K9GJlEYdjLtb9NIx8tQ25Z
 ZCJSpG4f666JRLrh0GL9zTnNPT73UjS/8m61y5w8wcC
X-Google-Smtp-Source: AGHT+IHJMEc5NsNfUNm/SdMJ561r1AUdBtJzRijqI4fw/BK5BRf5cPDJKOpc00nhQoFK0zD4hEpV4Q==
X-Received: by 2002:a05:600c:1c14:b0:42c:b55f:f4f with SMTP id
 5b1f17b1804b1-4362aaa97e7mr44822235e9.6.1734370012348; 
 Mon, 16 Dec 2024 09:26:52 -0800 (PST)
Received: from skbuf ([86.127.124.81]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-388c801a487sm8902263f8f.45.2024.12.16.09.26.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2024 09:26:51 -0800 (PST)
Date: Mon, 16 Dec 2024 19:26:48 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Message-ID: <20241216172648.q3fxwaxdkvtjqrfn@skbuf>
References: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-5-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-5-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241216064720.931522-5-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-5-faizal.abdul.rahim@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734370013; x=1734974813; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ws62IqXxwOmIXvue6QqDBdu01bZQNbrgvdYcyFWCQ+g=;
 b=DmDBudwS9GVVurmEI5wjPGXABswxKKUG0598cmXaq4prgCCmM7QEvwTCXnL6ity9L4
 8o8pS6ejuq4XXt216Uweuruv3FucZL0+HCBoUidYTv515rlOh18CzmRFPKQeh2CTdl0i
 YRZyJcifPVqp/Q5OhHVtWOhR6PQfSsfedJF6rqV+mc32kTC620ll93vWGk2Q3BZM6DQY
 XTE6mrMQbE0SdVS7aoGgYR71dth89/1+wdSn5JFl8MJ5xQe3BguwEZTa3949z0vZwF0s
 V0vd9eouOnIEiAkzbBUr+Rg8OOAeASeyTpP0y6agTonkZceVuNqzzTfrcTkah5lOM0es
 nRiQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=DmDBudwS
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/9] igc: Add support for
 receiving frames with all zeroes address
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

On Mon, Dec 16, 2024 at 01:47:15AM -0500, Faizal Rahim wrote:
> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
> The frame preemption verification (as defined by IEEE 802.3-2018
> Section 99.4.3) handshake is done by the driver, the default
> configuration of the driver is to only receive frames with the driver
> address.
> 
> So, in preparation for that add a second address to the list of
> acceptable addresses.
> 
> Because the frame preemption "verify_enable" toggle only affects the
> transmission of verification frames, this needs to always be enabled.
> As that address is invalid, the impact in practical scenarios should
> be minimal. But still a bummer that we have to do this.

Stuff that happened since this patch was written: "ethtool --set-mm
pmac-enabled on" exists. You don't have to accept verification frames if
the pMAC is disabled. You can enable the reception of 00:00:00:00:00:00
using that, and keep it off by default.
