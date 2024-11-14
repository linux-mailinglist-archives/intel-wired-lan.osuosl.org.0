Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 442599C9612
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 00:26:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 827F0407F1;
	Thu, 14 Nov 2024 23:26:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1fKPTP4N_Wco; Thu, 14 Nov 2024 23:26:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B303E4069F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731626775;
	bh=LhLkdQ+5uLvMbCdWHUj9AfIdTKOYpSPlrqnT6ZPs6mw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XRpDZoA4OaOIn/A6ALM0lZFM+iCsvR8B/oD5SqGatD6yIaX/mO+lFBZaqEnTg44rN
	 T799nRYuQudikZfXOJ9taieRCElcLfbz3sIs1mkSkKTmwlWHpEUJA/8nHsrlEIzYR7
	 VydEtRbNKNiA5V3atBxGT05FIiFG+3lnflQREn5qfqqQEXAnvYhy+SY425pPkcal6Q
	 +jAYEcYmqQH060Karax8zyLQWF56QT3da5G2Vjrqaevmv4yUdR/SIsqJtFbTQNMplC
	 JgdK1B4xKh1h1KDoFEVaZFHJetHliUpRaziFR3QQuPvJACKzBNXcNy4idP+1+gQZVd
	 NwalelA1aBURQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B303E4069F;
	Thu, 14 Nov 2024 23:26:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B6EFD968
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 23:26:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A458B60617
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 23:26:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QtmW3-rYoiK9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 23:26:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::734; helo=mail-qk1-x734.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DD21C60613
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD21C60613
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD21C60613
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 23:26:12 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id
 af79cd13be357-7b13bf566c0so65630685a.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 15:26:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731626771; x=1732231571;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=LhLkdQ+5uLvMbCdWHUj9AfIdTKOYpSPlrqnT6ZPs6mw=;
 b=IEN6PmHeHsJk+yFH5Z3BEGmwLBVTFCffLT8F52lt+N3BOK2kqlNQ/4wAoFvns5zjBf
 VPxOQCTuZEIP6DSkF1gAisQaJLq2zEN4dmWCIjNV3i5eMFsDEzgm/Il7YtfydaQ7ow7V
 LiaYwM4MIEhHNCapvnEcChufSkpstIKQBEf9rakdt4p0552I8STmElSJZvhAUsLkv81W
 EHDQAxhCQQSCKOJt8a9AbrxPeP6g4ZcNgNsS+xx1xFjJOEXTW3NO9LATPF4NPkCyQsHp
 JSKOprfSKe9Jz3q6wrW1iBeHG6rJxcXmHPN3LrQnTL/QzRDGT1ePoHgwWVGeAV8+Km8k
 V6JA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW6quoIm30nbSqIlPjl/8u3mkYYeLirPAyFARU+g1yCXqv9AqKrjSZIMZD0ffYKeEdtGyITuolhvzxQZ8ZjIuA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YycPnLgXHgJgV5oGuGc2Zf/m5bwMYU6hPMsdBMnDGqH06ysQtb4
 xaAe2GHdOaD/jdIwhBjyYezP6QZUCT0lX465pZQl+cms5D5evGO4
X-Google-Smtp-Source: AGHT+IG/B2pMZuR4f2b0W+RA/2nWmAFKOGJRYzhyrjS2sV89W1WPGEi/If/qKiNK3WYxCcoKumwlpQ==
X-Received: by 2002:a05:6214:390e:b0:6d3:f54c:e412 with SMTP id
 6a1803df08f44-6d3fb77c070mr9376956d6.16.1731626771591; 
 Thu, 14 Nov 2024 15:26:11 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6d3ee7ab148sm11141486d6.41.2024.11.14.15.26.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2024 15:26:11 -0800 (PST)
Date: Thu, 14 Nov 2024 18:26:10 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <67368712b301b_350fb529488@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241113154616.2493297-5-milena.olech@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-5-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731626771; x=1732231571; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LhLkdQ+5uLvMbCdWHUj9AfIdTKOYpSPlrqnT6ZPs6mw=;
 b=QvWYDGjJ23jgA4uFXSmsSVmQvu8zToNnREvHBaqjGa8W6Li3IXaXAyoU+b8A6rBQyr
 q+oGziMmurLXk2TJF2LftShCGmgH/8bMOMP+9HNMJUDJA0cpkI5McBnVEP0sxyl7bQ0p
 X0p8hC2NoA+XKpGOKPXHw0tW84eBjDSC8UqZdxb/zFNs9bGYtw5/A2MrqZRHHjekvvRS
 EZbpbhSmxhK2SvlXOVk82V9WRI8rDtevYjTxk+wOy0AXeu1Mw7CwRC+cQcLT/aFyFrVI
 skMmeC7/96XVfEfUxzFuuQWsXohQc18pHA2G4Dpd3MTnd8ExwgYRdap89VRM5GBgLAdT
 OA+w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=QvWYDGjJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 04/10] idpf: negotiate PTP
 capabilies and get PTP clock
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

Milena Olech wrote:
> PTP capabilities are negotiated using virtchnl command. Add get
> capabilities function, direct access to read the PTP clock time and
> direct access to read the cross timestamp - system time and PTP clock
> time. Set initial PTP capabilities exposed to the stack.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

Tested-by: Willem de Bruijn <willemb@google.com>

- Brought up a device
- Verified the virtchannel capability negotiation
- Verified /dev/ptp0 becomes availabe
- Read the device clock using clock_gettime(FD_TO_CLOCKID(fd), &ts)
- Verified clock is full 64b (i.e., not a 32b truncated that rolls over)

