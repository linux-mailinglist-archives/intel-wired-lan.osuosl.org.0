Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 357C38439D7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 09:55:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB4FC410B5;
	Wed, 31 Jan 2024 08:55:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB4FC410B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706691330;
	bh=1zAz2+MFVhaNzjF0CUHFlp2iK4QKE8zWsjZLLf44jk4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SzjdmFtC5Q9lTN7HxT3eiu86bPbFQGyc5qYg0dfsb9/+irZckhpRN7Xeqw6xhYI6i
	 /BAtgAXJNiBNKyTJtAXqh+W7dkX3wj/rNgQW0N5uMgjXRp/AP7hIdzew1jN4bxZ2KG
	 zFNnFbyC2wsTL2ZBBfZD+D/44dwc9qoMBNFjwd1cJHy0JFaqtxeDOUyzSZbL9isYrh
	 TgiZoawrRxH+vz2DTwagboPY2wAZ92qSqXzUUAtCVWitu5jr9LHkjzcx0fYXP2J2eT
	 OMGhdNyQzTcHhVaL0rrws94VWoh3Y+1a4+4ZlYbfxFY5KBM3y6afyAWlt81vvVbp1q
	 y+FVt2mkY6bbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aN_cRvT_ggvl; Wed, 31 Jan 2024 08:55:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0720A409C2;
	Wed, 31 Jan 2024 08:55:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0720A409C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 21B241BF846
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 08:55:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E86C2409C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 08:55:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E86C2409C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DhG77_tDHp6j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 08:55:23 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 60C2D4097A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 08:55:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60C2D4097A
Received: by mail-wr1-x436.google.com with SMTP id
 ffacd0b85a97d-33b0763bbc5so80984f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 00:55:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706691321; x=1707296121;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1zAz2+MFVhaNzjF0CUHFlp2iK4QKE8zWsjZLLf44jk4=;
 b=DMLe9AZtD4VqGm2whcBmAea2o5uF/RqreX61u34Tt/4zn6XFUymcxyQWahfSo+m4pJ
 AyKbSyUtZU6oZ+xmJvvYIRgHKPa1aD2ebRLfw+0KqyqX/N8gQvA+hZKRycd+XItNDhtf
 C3JYOIYfi50V8r9VrCUUZHmFBDkvlTT7WneaZsmfXfJ3DB1DL43riqff9OxLMlvherRB
 hjI7fkdITlwaAnRxmxp0FY9D8T8Cdfqu/s2tntuVu4d3uOgI+D8sgf7jUSB1yWA2sbd8
 2UaYzYnCg3x13V3Unk3QMpanTRKAyQ2kj+B5J3FDu+GPzJuyRSZTvlnzIuO4u2rdqmY+
 hTpw==
X-Gm-Message-State: AOJu0YznqElcR/pa7MJRhbatddKFKJpdLa+SjsMwhqpZkppv79ryok8k
 bQB7dvqMOdOgLwC9/ctFk2wVa19jxFZLn3umgCzUrTuTB2v9v0CBP8EaPoxlY7M=
X-Google-Smtp-Source: AGHT+IEDaB/xrJB9e/nbcOYh/jzhcipifSUQvbsXwmciEyC3bvRWprUeAzSWNd6QobawgPm3fQCCjQ==
X-Received: by 2002:adf:ffc8:0:b0:33b:290:253 with SMTP id
 x8-20020adfffc8000000b0033b02900253mr711420wrs.59.1706691321011; 
 Wed, 31 Jan 2024 00:55:21 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCVijmjMIBMPrVUDqpjOW8DpKrsuG/p+eiyjvljc+dEmxB6q2VcNXli1GoNTXWTgsQuSMqmzskCR7aGyn4nRAwYXYG/UmYNOWWOF1uwNI61zppf43lGmYYizGcUNUFCZZQNUGCpi7w4ZtgCB0WBCIqRnfLxpSC7406NOM6iHs7q8O8FAcRbp9PGzvBG0YR8wPtWvmVSfJPd2E13lM01BVx/i0geEPVTkXUA85quOLBts/lbIapx0m+Jo+E9NT+8V7zgl1CDqyXsAmJTXcg8qrf6IjK7V6+Bm05MpE4tIP18QxWOvc6hJnHXPaG/FBv9hHppA6A2RVm0KvkfqxOQuL2hN0bjIcYdO2SCRlhD74ep7iaQ/4VlTQOZdnqM7BYSCfXvf0IC11iSL8TmQkogGy7tRWyt308LRGyblF0Yop5iZy4AyE/JLjXz8YbuWg/lkm1NH80kP
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ay12-20020a5d6f0c000000b0033ad47d7b86sm12915043wrb.27.2024.01.31.00.55.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Jan 2024 00:55:20 -0800 (PST)
Date: Wed, 31 Jan 2024 09:55:17 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: karthiksundaravel <ksundara@redhat.com>
Message-ID: <ZboK9aHNTngj71ue@nanopsycho>
References: <20240131080847.30614-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240131080847.30614-1-ksundara@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1706691321; x=1707296121;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=1zAz2+MFVhaNzjF0CUHFlp2iK4QKE8zWsjZLLf44jk4=;
 b=STssBScGRBNjnUbjXBbyvkemg5TvNBjhLa3gNqkPtWgSff1U0PTaMIhlUMuek5Kp2h
 6uMAyi/HP6/ZNH3UKPbG69RFBLSJj3QHxqQ7Kn3vAACP0QWXg9GAoxKXDduYIAamDJeE
 wC749IbZdLmXdTvOHKMp+CzAArJwPo0cKlgLTRr3rsQ1w0mHssxzxGqzvtVAy2TgcxA+
 CjklvpiDptuCS+BT192uh+o79EDBdwozZhpmTc1lboWJqwGHeYmk/MuSd8VEfV0W6YWV
 pzDuY76UCULgG6rT/VTxLB5ucKebPWSSbIlWflUXyiTLDF92PPabzZIR+dJFNTef1n06
 QjNw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=STssBScG
Subject: Re: [Intel-wired-lan] [PATCH] ice: Add get/set hw address for VF
 representor ports
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
Cc: vchundur@redhat.com, aharivel@redhat.com, cfontain@redhat.com,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, rjarry@redhat.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Jan 31, 2024 at 09:08:47AM CET, ksundara@redhat.com wrote:
>Changing the mac address of the VF representor ports are not
>available via devlink. Add the function handlers to set and get
>the HW address for the VF representor ports.

Wait a sec. The API is there to change the mac of the actual VF. Not the
representor. Apparently your patch is not doing that, changing mac of
the representor.

NAK.

Fix this to change the VF mac address or drop the patch entirely.
Thanks!

pw-bot: cr
