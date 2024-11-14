Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BABCA9C92D7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 21:02:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56C1440719;
	Thu, 14 Nov 2024 20:02:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a5SDIn0mKXKq; Thu, 14 Nov 2024 20:02:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C1F340714
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731614569;
	bh=TVNe2DpIiHN1v4twNpYtaUE1vUafTROYAdwFrE6MWV0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JntPmw8YtVspoVb+eucFKnoocx8oFg/PZ0yBO33DJlUYkTytpaNTPNvJFuXkTZbI/
	 wjEoQTJNLxsanz9+FunI0wVMHAPUaqehKVOXFcYCFs2f3zWhNFFuGvblATuNjvRoTv
	 CTfB//gPF1STEdUcjCwbTgAJJFxaVKE3J69Polq6N0bR4qiKRtEaXV1HS0UNY6dKXM
	 Oh/ma8DmZo3p96CBaLzX+oB8wy9othIQs33QOeHiDL35PPOH9TDtwAJ+t2kndykQFj
	 155zbtsnfJQLACUP5tnjuXOXmRm7fsznI/vwQTH/bzrhXblM0maYpmj47GSNyIHzKK
	 zFzAzk+B0YZ/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C1F340714;
	Thu, 14 Nov 2024 20:02:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A2778968
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82CF6606ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:02:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fo3xqmAYqibf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 20:02:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::830; helo=mail-qt1-x830.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A5694605BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5694605BB
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com
 [IPv6:2607:f8b0:4864:20::830])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A5694605BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:02:46 +0000 (UTC)
Received: by mail-qt1-x830.google.com with SMTP id
 d75a77b69052e-460d2571033so6971981cf.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:02:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731614565; x=1732219365;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=TVNe2DpIiHN1v4twNpYtaUE1vUafTROYAdwFrE6MWV0=;
 b=eG6ONVOQIxTjypzuytPiXhRA9KTJk7+dRZOKGIeJu/mOJdrqkNi4XHgfwF6P8QSv0q
 3NyZh7m5gB7jtfDmNLrk4qkNY6RNnEXUXp8jKLs+4b0bRQjsRsLmUJ92qbgFQjkbELxH
 Bxebuj6RLb86NkYN3hzGw+MrbsLbuPuhdtxTvdClrbOllMUhmOUYe3lD6vhYLwhP2os0
 SG00lqhd+4m+EpcdwTGXQn8OMNE7o0eooGoY8nBZTiTJ9xtMrmH2MYPIuLJu6V3Cw1Cq
 iClHYslIDeMGZR1OBBKafxukRtN+eDYDBhwg1HU/tFk+24YIjSqMK5C8LLrl7p5f5PNQ
 PZ/Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWxIszDHGQ9F+AI1Ft9ZDY3FSF7431XUk1W/nXgoy5JZx+rK94ROCzfWigPSC4nTsP+Aob6ELgyBYb8ro6DjLI=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yweq5HOhmG50nyZBzfIQVorLJftyyc8PSE2YbU4ApHluAmtV9AU
 0uFFs2qhUPg6m9XNJdmrsy/3R121NaHhlByktS9UsWyZsyudDZ+M
X-Google-Smtp-Source: AGHT+IG9bxyt7ErkfkNfDEzAwuPjc4JzCLxRS7ORECzqpDavPzT2PdQ5aMUf0hCoM9uj197qSfSV6Q==
X-Received: by 2002:a05:622a:1313:b0:458:4fe5:b307 with SMTP id
 d75a77b69052e-46363df418bmr1210541cf.10.1731614563845; 
 Thu, 14 Nov 2024 12:02:43 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-4635aa323f1sm9908971cf.50.2024.11.14.12.02.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2024 12:02:43 -0800 (PST)
Date: Thu, 14 Nov 2024 15:02:42 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <67365762d1bce_3379ce29454@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241113154616.2493297-4-milena.olech@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-4-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731614565; x=1732219365; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TVNe2DpIiHN1v4twNpYtaUE1vUafTROYAdwFrE6MWV0=;
 b=fXjhyfzUj44jFTRml++dxiJ9b0oxJ3Kdm5YRg8M1RO/waLvnspVgaejLbHS68UPSHI
 r+6ZU3C6Nam69mQCtOX166R+Ed98dud0Li433NbPENK0NIpaa93fhvRKc9gGQrphXgko
 O5E6Q3nk95uPF75kO8LUQw9uSO2YQVWyNik0XyRrlczl5JtVPpV2D33l4ODuwoavxVRc
 nCvUv4MDMYWFgmq97DLjVG86DK+hBFKo/Ch68EeKojyIK7UQaD1FywFW00s83He4DhCO
 JITEEeYIIvJlLbl9IiQabo4JY8Xqij7PaMZDbH2sZZA+uZ91eMQrauBB10ISwfqjWbrn
 4Atg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=fXjhyfzU
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 03/10] idpf: move virtchnl
 structures to the header file
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
> Move virtchnl strucutres to the header file to expose them for the PTP
> virtchnl file.

Minor: s/strucutres/structures
 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

Reviewed-by: Willem de Bruijn <willemb@google.com>
