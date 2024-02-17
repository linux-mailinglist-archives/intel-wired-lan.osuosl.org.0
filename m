Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83651859060
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Feb 2024 16:05:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7321D8215A;
	Sat, 17 Feb 2024 15:05:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v01hsmiE8GAU; Sat, 17 Feb 2024 15:05:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2D5A820A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708182316;
	bh=PwtaN5KguDzbZQIXi+nboWbk3Flbti9g4PuG50G1wfM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h5oZqcOloRj6UVr0EEm8+s+M0VOMmIWKSAkw63WQTsAQ5BA1RAvOMg4klK45Ieqlo
	 P/WL7IxYn4h9usglw0hw/OZ/iVyOo2iXuU5HblSG2w4Az3HUzhQlq8bsrKddcOPZgZ
	 ZvUNMZLAHVwrZuAksRNSN6EYgce/2h5Rjkbdetho7s/bp3bBOFEbG8/+BURINscAku
	 T7JtlhGOeTjvfJghWsfGCiwh1eLRJGc4xt0GONy0Qto996rMAZKzdnUnaCFaMvC2sJ
	 AMG2DoUIJJGC1wM87YnZ5VplneQEPzPBBpccu0s7Qd4wlX1qcjeq/1yMi6QTCF5c0E
	 2bOvhysVIPQqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2D5A820A5;
	Sat, 17 Feb 2024 15:05:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 504111BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 15:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2DC8960BD2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 15:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ttFkHhULanBv for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Feb 2024 15:05:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1135; helo=mail-yw1-x1135.google.com;
 envelope-from=richardcochran@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6FAF060BB7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FAF060BB7
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com
 [IPv6:2607:f8b0:4864:20::1135])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6FAF060BB7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 15:05:13 +0000 (UTC)
Received: by mail-yw1-x1135.google.com with SMTP id
 00721157ae682-6081e7c5f17so101117b3.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 07:05:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708182312; x=1708787112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PwtaN5KguDzbZQIXi+nboWbk3Flbti9g4PuG50G1wfM=;
 b=FyL8Htj5bLj0uRA+z6hPmcaQej9b9+eDs0f5FwNcQiqlFsvQKwskRQHSiHG9K2+v5+
 zscg3ebj2AwuZpXoi+0fIkAO3Bd0XJfPG5hltOYO8kVke5W9SaG2nSzlA/Li/7/z2uku
 lQFDBEUQN69yvrEL5J+3p0OF7mDe9gxYjIw7MfvozcNYFnj99WbhbBdr5LvWkF91nQwF
 wFFNe2bPVE8zkWs43WJ56c0ijelqUw4Qsg0D0Qq8ASbcRBq1sNTpDF6Nxca5EXnDQgYK
 VZOqaHgNl9KEGpCNg6aJZPmQMgWs92pFvAWCqXSgMQaUD8sq76K4Eb7Be01cOLFqtOs5
 znQg==
X-Gm-Message-State: AOJu0Yyk8gJEhK+6GH0wxTZgkPwhazz1G6Co5w5WfFp6TNhs+b6rAuRd
 eHAKWbntDxRWXHoZwKHTwA2NB+ScsF6rMTu9F0uqV1jEX2VPv2hE
X-Google-Smtp-Source: AGHT+IFXWWeoFO1ON85p+Ik0deECpkofY6dfxwOlh2+j65ePXYE8uLwTWQe8xVOQOOgoR17yzG8WSA==
X-Received: by 2002:a81:48d6:0:b0:604:a037:e0a with SMTP id
 v205-20020a8148d6000000b00604a0370e0amr5823960ywa.0.1708182312024; 
 Sat, 17 Feb 2024 07:05:12 -0800 (PST)
Received: from hoboy.vegasvil.org ([2600:1700:2430:6f6f:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id
 v184-20020a8148c1000000b006081ba93f1asm101752ywa.90.2024.02.17.07.05.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Feb 2024 07:05:11 -0800 (PST)
Date: Sat, 17 Feb 2024 07:05:07 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <ZdDLI4o1Bll1xvH6@hoboy.vegasvil.org>
References: <20240217010455.58258-1-vinicius.gomes@intel.com>
 <20240217010455.58258-3-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240217010455.58258-3-vinicius.gomes@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708182312; x=1708787112; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=PwtaN5KguDzbZQIXi+nboWbk3Flbti9g4PuG50G1wfM=;
 b=LZRNGoRcmfiLPicNdpRAY/VU2l2kwOPxC+KNnFQf9QVs80Wq1ySngVJdLtuzUOPnWE
 J+yOlHpN8IIfWEXCVF3VPAVWWAlZAviRDUR2hZuEydbM5Ju0mABVdPtlNwpKBLwoAXxb
 7sGhd721nxikAOpxbszKd9DP8f0wa6vUlgeiHKo8GKZFrQQO8SCec78JKg8Yotr3imt2
 u5cHNwvo3fG4i8tdQbbdhqcyj3aFSOtG7BEu9uGWmRxJvl41CTX2+Hw+EJmT/Sj6KqwA
 iF79CxZfqMLCaziRR5I7DnCYvphoAkOpMI3DzVHB+C1m0Lz3iL5LfEe8XjA6wZ80IcH7
 FRqw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=LZRNGoRc
Subject: Re: [Intel-wired-lan] [iwl-net v1 2/2] igb: Fix missing time sync
 events
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
Cc: sasha.neftin@intel.com, netdev@vger.kernel.org, kurt@linutronix.de,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, anthony.l.nguyen@intel.com,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 16, 2024 at 05:04:54PM -0800, Vinicius Costa Gomes wrote:
> Fix "double" clearing of interrupts, which can cause external events
> or timestamps to be missed.
> 
> The E1000_TSIRC Time Sync Interrupt Cause register can be cleared in two
> ways, by either reading it or by writing '1' into the specific cause
> bit. This is documented in section 8.16.1.

That is not what the doc says.

It says this:

    Note: Once ICR.Time_Sync is set, the internal value of this
          register should be cleared by writing 1b to *all* bits
          or cleared by a read to enable receiving an additional
          ICR.Time_Sync interrupt.

    - Intel® Ethernet Controller I210 Datasheet,
      Revision Number: 3.1, June 2017, page 469

It says *all* bits.  This implies that the interrupt sources may be
cleared individually.  Because the non-acked bits are still pending,
the level interrupt should still be active, and the "missing" event
will be handled at the next invocation of the handler.

 
> The following flow was used:
>     1. read E1000_TSIRC into 'tsicr';
>     2. handle the interrupts present into 'tsirc' and mark them in 'ack';
>     3. write 'ack' into E1000_TSICR;
> 
> As both (1) and (3) will clear the interrupt cause, if an interrupt
> happens between (1) and (3) it will be ignored, causing events to be
> missed.

Are you sure?

Does setting ICR.Time_Sync[TXTS] also clear ICR.Time_Sync[RXTS] ?

That is what you seem to be saying.

Thanks,
Richard
