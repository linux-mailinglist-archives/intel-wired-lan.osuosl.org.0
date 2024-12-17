Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5D99F3EDB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2024 01:40:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2DA180E42;
	Tue, 17 Dec 2024 00:39:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1E7WEVSmVC9d; Tue, 17 Dec 2024 00:39:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AFB580F11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734395998;
	bh=A1R9tHLaDf/bgD2B1izePA9NPuQUlRqd+nM4NpGtDMY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EtZUxncDhsJlczThl6C57wY1vRK8HnH2WiYi5pj9AtZYgyL9sOhmRWDpbGfoJSe05
	 WgwMISiY70CoYhFrcKtffi7VSciVuGVuRMUwwqjuDR5yEn+ZyJdNCjY5QaFuoj9DDm
	 ApqStcM8i0Ut/h+Nc+FiIckWYwqztTTjuWSj/YvSiHJHb9awnpOUfoH6cA8awHZOEd
	 fNHic6VWNA50uVL4/BEp2krWfcjng5uH0QKLB90B94zNiIrOfmuiW1rkPp1HVuh5tZ
	 leslzhO6o2wk2p6qnb7UlAAd9/Js5So6/kdC9OD+wptoO1Fs8mAd5dILHx71O6JhSd
	 KceWly4pUy0BQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AFB580F11;
	Tue, 17 Dec 2024 00:39:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AF000CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 00:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8FAAC606AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 00:39:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Bb3e4xSysXe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2024 00:39:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::630; helo=mail-ej1-x630.google.com;
 envelope-from=olteanv@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B8F3E605E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8F3E605E5
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8F3E605E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 00:39:55 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-aa67bc91f87so82033666b.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:39:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734395994; x=1735000794;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=A1R9tHLaDf/bgD2B1izePA9NPuQUlRqd+nM4NpGtDMY=;
 b=dKob7IFdGUp+PP6Hg+QegZEk9RcQ6WiYEeFKLYCQsStOW7oHGqWgpsbqJz3CWJgoif
 3t1v8MZ9nYTMj3aTy7L6m/iibr7AmLmZcXwjn34wgWK9bUipNA4dtqjYYi00Y9cF4jGD
 DTOcDQ/kBPpJ0+1iKHxd48+F3HiAWBCgaymxqTB/V+3IEt9ijOSfy/F8UPu2CXOUkb1e
 ed7V4LldSlZHaPkk/eiw44NtkpUmZJZ99PKAlBghhi7jMO/jGBmB18iYQRVkXAG51n3Y
 29wyuRBhZdKEqMtkT8JWYd1Qy2TM4SOo3wLBgAfmKgfOodI3Spk0SFI03y+1CLO4btUZ
 cUvA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVwmwsHOMhr4XV/gJaUgJBJtDkSlg3Q5+mFhMsns4r0dASqhA1rS93VzqLu4CHSTGuJjav4edtHW41R60GODh4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwpX7uMsL7tMJBuqAk2zHSky5HFaoxMjGPywr8Mq8qHBfxMs2SH
 S++ave1vMi9s9/gIHNhG8UdU4OeDzDES383ZZ2bkANhQslC8589l
X-Gm-Gg: ASbGncsmcx/RYvNH2S1b6P+ewOcse6mwF/mG01fgrstadBUima/w/Pmcvrqe6u7zj+G
 fyunl0ucfLL/Et8tyF4X9Ge0tS9bMG07VZxU3umT1MMb3D5byGYLOxJGIJhtQij2nDJ3FwCqGOx
 I+FwNUlrOJTXMUV6by3NHD5gASks5i3jYgTUI+00ZYU/2JA7dwLyNps7nBSzErai+2lsrcMt+6s
 yYx8HdVuFv99VQiBJ4OlL6ipMs8xH8d3MCKk83ml2xa
X-Google-Smtp-Source: AGHT+IFuN0BX5Q/xTjVsoLVygeo+9aUUnyOxTDy1CIyJYlh0HG50/3fOvQWqbis5B4emJSuPT6oBZA==
X-Received: by 2002:a17:907:3e20:b0:a9a:8216:2f4d with SMTP id
 a640c23a62f3a-aab778dce60mr521221266b.3.1734395993225; 
 Mon, 16 Dec 2024 16:39:53 -0800 (PST)
Received: from skbuf ([86.127.124.81]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-aab963911f3sm382677066b.161.2024.12.16.16.39.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2024 16:39:52 -0800 (PST)
Date: Tue, 17 Dec 2024 02:39:48 +0200
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
Message-ID: <20241217003948.ghnfuns3h7qdjrfr@skbuf>
References: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-6-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-6-faizal.abdul.rahim@linux.intel.com>
 <20241216181339.zcnnqna2nc73sdgh@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241216181339.zcnnqna2nc73sdgh@skbuf>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734395994; x=1735000794; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=A1R9tHLaDf/bgD2B1izePA9NPuQUlRqd+nM4NpGtDMY=;
 b=EXqk3+2qsQp6YPVu71B/t/REaNMsNn7Ar9yVHSuBbInQH8gXNM6oupPZSacB7w+xoP
 embLeJZz1/zRoYgwfJni78leHo3hLNjKupgeyNvIO1OOhW2E40EHXB2cS6mOkgBuyq34
 uHOPSvoRJybuLVspyc0f29hcHXygDsQJSN/w4bj9a7HjeGDmmX/Ch8q+0j/e0YVBAKPa
 TAKhUcl1c+/XliMDjxBv8WdWPsWu66rJIZZaJy//hCvAPPCwsyXLbJ9w8yp1YoekUGVd
 nDOb6e96njXnY+Dp9utDj6JiR1ZODrg660//6zTVrqiVdqDAi+VbstrU9WxTxo72bEUo
 ukYQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=EXqk3+2q
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/9] igc: Add support to set
 MAC Merge data via ethtool
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

On Mon, Dec 16, 2024 at 08:13:39PM +0200, Vladimir Oltean wrote:
> Maybe the methodology for calculating these is used here?

I wanted to say: "a different methodology is used here?", sorry.
