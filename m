Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4974C9ABBF4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 05:05:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAEC1607ED;
	Wed, 23 Oct 2024 03:05:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wjF2q0ltG6Lz; Wed, 23 Oct 2024 03:05:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F8BE607F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729652727;
	bh=QSo+aUkA2L09wnQi5t2l0lbWR/1059zX0K6vucStlzg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CI40LTq8n0P8Iau01MRFIrbnYr6juZ6Khpxd65wJlN/Lrsg1oIt34uTmRD2jdNN3P
	 eoV2fCRUtHv+njs6owvBYO4vuVrGBFivbVlLX4GfDfj8R5lnjJjp97NET2mgSVAUOz
	 VjLeb6AnHs39hzxV7AudIwl8zRlLOdUcnUKYKRCR/1k9W604KTeqbW0R2NITWcF2cV
	 OhtNoVH0Dxo4Fjh61gudGo7wPGQibGFspICi0XqBf5uDp2uv8fg23xdOKJiBPDlWIi
	 /tVM+cSPQ6sSTwHcMRDDPodU3uDQlBnGVWX0xswc95wqBWHZYClYN3GC4+lHA6vQVH
	 cPFxa8kDdCJnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F8BE607F7;
	Wed, 23 Oct 2024 03:05:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 64A6559B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 03:05:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4539C606B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 03:05:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g7dC0T48Dm1x for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 03:05:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62c; helo=mail-pl1-x62c.google.com;
 envelope-from=pjohnny0508@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A3575607E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3575607E3
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A3575607E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 03:05:24 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-20c805a0753so55077485ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 20:05:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729652723; x=1730257523;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QSo+aUkA2L09wnQi5t2l0lbWR/1059zX0K6vucStlzg=;
 b=Mc05N9gDu6GJSH5qWpxX13Fg+6JLfKlgHHoyFsPcRY6gdmH4wNcidLwXHg5oQAn2g8
 NagP5Xx4eJSIopVAv64B4Y2uwi6NRXPfDsjwaaus6vcNhSBHWb0fngxzV49B23Nw/NCX
 QOSYloB2bscl+WlB+IJafCmOCjDhSCoHSNlyNINAxo34c7z9lQm6olZZdWNy9Hs89UDT
 mlHKm6z4T/TQVjM5jMpZv0P0wXMvS8ul960tIRYI8UGjBodZSLwCmyl6WXwdn8LU91So
 WxuMnE+lnEni29zjzqxBEqo7wIkNvhuDGzVfxDdbgw3ZAh7ltv6As81lIiJIH2TeuJSm
 BpPQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVNophPvwjnhFdVZfkSPlx362ALDJKqOQOtblefr5p6mQpNVheUmRqbzKtwW4tJ/fX4v5BkC3OxiKoibUGozhU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyegTM9qagNJ4v0WK6jg5d+r20ZQsb7d+nrgbCuZlMKQjZxe45J
 YVQbgv8qQKl2Sg+TnTMTzjzOm91O1l5wgEdepPzVcTtNAEg3ea8Q
X-Google-Smtp-Source: AGHT+IGNCd6pswnFVJbP69j1MMou7cXV+SSVwZfX4y88ppmSoNsF/1akW0qlPsxclP17PP3VS2uVgw==
X-Received: by 2002:a17:903:2287:b0:20c:bcd8:5ccb with SMTP id
 d9443c01a7336-20fa9e61d41mr16004915ad.30.1729652723384; 
 Tue, 22 Oct 2024 20:05:23 -0700 (PDT)
Received: from Fantasy-Ubuntu ([2001:56a:7eb6:f700:b2d3:e25a:778e:1172])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7eaeabb8418sm4914142a12.67.2024.10.22.20.05.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2024 20:05:22 -0700 (PDT)
Date: Tue, 22 Oct 2024 21:05:20 -0600
From: Johnny Park <pjohnny0508@gmail.com>
To: Simon Horman <horms@kernel.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <Zxhn8AfRBNzY8XEO@Fantasy-Ubuntu>
References: <Zxc0HP27kcMwGyaa@Fantasy-Ubuntu>
 <20241022160933.GB402847@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241022160933.GB402847@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729652723; x=1730257523; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=QSo+aUkA2L09wnQi5t2l0lbWR/1059zX0K6vucStlzg=;
 b=M3lP2maVFAxcxZ0XkukxrhhhuRxQH011garVp30gDTTgfV9e5J5xsHQfDdp2SWfU7l
 rrvn7g8ZgMAFNt9hnKZ6Rnnev3xm1kGO8s2DAg2W63mlINocZ8Sd+bC1EO+zPleQ0vDW
 tX4qHCs8vfw79Mx8Nl+GWLBdkTRi3sjJrkzQjgWVHbg2MQbOGNhk6TITwz3akSdxVvNP
 Z10iOCLAlR1VGcDC29bZICJWvpMMfwHw2R2VkgnoGAZueMGqDxl4M1+01VS5L3uXqkcx
 KwY/L7HhR8WB67jUlc+3dUBU9burIly+A6G4Lc3UqBrjd/RKMpXTH7eBIOA74tfQpkrl
 qw0w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=M3lP2maV
Subject: Re: [Intel-wired-lan] [PATCH] [net-next] igb: Fix spelling
 "intialize"->"initialize"
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

On Tue, Oct 22, 2024 at 05:09:33PM +0100, Simon Horman wrote:
> On Mon, Oct 21, 2024 at 11:11:56PM -0600, Johnny Park wrote:
> > Simple patch that fixes the spelling mistake "intialize" in igb_main.c
> > 
> > Signed-off-by: Johnny Park <pjohnny0508@gmail.com>
> 
> Thanks Johnny,
> 
> I agree this is correct. But I am wondering if you could also fix the
> following around 3909. It seems to be the only other non false-positive
> flagged by codespell in this file.
> 
> mor -> more
> 
> -- 
> pw-bot: changes-requested
Sounds good, I'll make a new patch shortly.
