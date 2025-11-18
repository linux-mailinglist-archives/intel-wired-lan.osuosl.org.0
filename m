Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A83C67BF4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 07:37:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2215821E1;
	Tue, 18 Nov 2025 06:37:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O53XChk0292m; Tue, 18 Nov 2025 06:37:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51AE282239
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763447848;
	bh=rKXeu+SiVQVquAoWhSPWf0RcZCWL+HzPZuMMI7btDH4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qLOKcYLEneoupvMy3ZrlEQdYQuILCu3Dx0prLAucf64c5sGipJPSw3a+z1399t0cr
	 gNQQttrxgdmHOmVpNSduNfh3SWt+Wr6HDcHOvm3rLvRgIjxPrLLcqaPyaMP8TZmnKy
	 btnm+lO1DaJHglaonqqNOpm42T86x6aNVN3/6Yf9jqBX4yM+OFh45/o+C1OyNpV0Ly
	 8jamvm8d0/zUW/NkyQzyLYwkKvZGSYakbi8/nwLxJsz2518l1kBJGiTA6/sQ0qVgDN
	 U/fm8dfQraFsLvoEBc2g1Bwcf7MEcnEARz1lkcrORdtBh/Ef3Sj1xeV/T5FqbuUcqT
	 y2eh9INdSGk1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51AE282239;
	Tue, 18 Nov 2025 06:37:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0AC1CD5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 06:37:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E744F606DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 06:37:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nqja2qxYrQx5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 06:37:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42a; helo=mail-pf1-x42a.google.com;
 envelope-from=alessandro.d@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 265286065C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 265286065C
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 265286065C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 06:37:25 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id
 d2e1a72fcca58-7b852bb31d9so5756885b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 22:37:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763447845; x=1764052645;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rKXeu+SiVQVquAoWhSPWf0RcZCWL+HzPZuMMI7btDH4=;
 b=PEuZwF0FOYryrHTbevI6F7B8abtIvOJ6E3VlkgWvrF6G5/S0ksYVeMh3Lj2iEE4prz
 HsU+n8kf938JPrShGy1dzxUuE3EAi22PSZyT9mPidUmbkgqp2GJWlVS8t7rzTsqWM0VK
 fMjE7TsS7EsfUF4GLmWjp4SDCpaaA8cM311eFHBg3t5sXmoAfikk0nNilG7dPUUIXHFC
 5of36lPciqmf7GRiL/JZchhMLSJYLsOIbLKeHoFXsNQhwiqZxj7LvtohQu/tW3pQXyVV
 VVDZG5H41D5Oqv0P5imD+v2ASCZdm2L+3AGBqc0WpAb/K9VvHCwFkZCsAPzHkP38JhgN
 0Khg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXBbgoNMQb7daifPqs/816+cUyDHl9RDLzW3t2aUsfrfBx1bDy7HhEWTGDoUcUTNqjEyvFR7OSWMA46gFtJAqQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YybwayugPq80yPeEsZVwICFwUUJfe/MfBme6uG/ZGfcA3JCHS3d
 umFCcoFpq8E2eMnjpNCrdIuaTEWrLBnUwkb7BZtudtpuOfE4lloxi1o+
X-Gm-Gg: ASbGncs/RHfmFkXO/JoUiKgk48tv65TW511yPWQfEOOVmermHnA24scf7S/8QJO9q+I
 UrpjkkDSAqYTrC6HTbZSnXRqxoYbCbX/WkB8x/g09aOcG7YKDHsrzXC+SHrJed3YQXN1Ku5/wIV
 KSPAO93tM6PtOD446E7Jb68q8WEPdp5+p075lTqtWnwaf24XcUSBXLDrlUBaUELqhCvszEjRTXE
 zYTwInj77YSyW4A/B0hCjFtxX54pRmEJINZuG9w8geLwyQSs9Sv+enQJPMb+WDH+RF5rV2I3Skd
 QV670TUM3lgLpvdJczz7YUp02KAuxNx0WypcOU988l3W8DN0yRBj/hHaxgnyKhgXtbDXc+boTzH
 e1lLBndjj7hQxqFpmGM9EFKVR1girJyIFhGdfpfClwdAxoiX1ARMxTHX7BU0Anldnb1CPmCdjWp
 Lwjv3HAP4leFQgsYez1citoH8BPbRWgWYFkaWNUv2nsNBsOX9K
X-Google-Smtp-Source: AGHT+IHXALiriWwJLx7SmcMxCfVQY5rBvQyEVgIoRqwO0R8z37/xvVCwrwjnmjxza5ZezAx2KyQwnw==
X-Received: by 2002:a05:6a00:2405:b0:7a2:8d06:fa0e with SMTP id
 d2e1a72fcca58-7ba3bb8ed5bmr18001534b3a.26.1763447845354; 
 Mon, 17 Nov 2025 22:37:25 -0800 (PST)
Received: from lima-default ([103.246.102.164])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7b9251c99aasm15364262b3a.28.2025.11.17.22.37.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Nov 2025 22:37:24 -0800 (PST)
Date: Tue, 18 Nov 2025 17:37:14 +1100
From: Alessandro Decina <alessandro.d@gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Alexei Starovoitov <ast@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Daniel Borkmann <daniel@iogearbox.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Tirthendu Sarkar <tirthendu.sarkar@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Message-ID: <aRwUGnyFBxrkjGl7@lima-default>
References: <20251113082438.54154-1-alessandro.d@gmail.com>
 <20251113082438.54154-2-alessandro.d@gmail.com>
 <aRcoGvqbT9V/HtoD@boxer> <aRgysZAaRwNSsMY3@lima-default>
 <aRtPXS8haLNHu8H1@boxer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aRtPXS8haLNHu8H1@boxer>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763447845; x=1764052645; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=rKXeu+SiVQVquAoWhSPWf0RcZCWL+HzPZuMMI7btDH4=;
 b=Jz5QuwyetCN1HnsWkXsMfvY7WBUmYj7OPz/dIBUTu1nBNQ5rOdrVpyPDmq24ier2SN
 jPrGF2WDCOWjoX8vRQTqkoGyZWVc4RKD2a4HrLVB25f3297dUNAUt9Zi2fOPJDN5f5sk
 FQaVdAY6ZdHke2NwUm9b5XNCEn+0NLHm3aghKLQPYlbtr5UuMVTrEWGG0jOIXeqagFSJ
 dXdwDjIJC5KZYU/hqpIT55L79BmU7WKbu1L08M0SkoSVear4A1MJ88XhbIQH0ZqxX/Xq
 Zm0ZFVSSF0qfPzLQxccDb0dHkmubLZJhKcwpJGiHkAV1E8x/chxCvWdUUyR9V7t74oXp
 t4YQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Jz5Quwye
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/1] i40e: xsk: advance
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

On Mon, Nov 17, 2025 at 05:37:49PM +0100, Maciej Fijalkowski wrote:
> This revision is much more clear to me. Only thing that might be bothering
> someone is doubled i40e_rx_bi() call in i40e_get_rx_buffer(). Not sure if
> we can do about it though as we need to use ntp from before potential
> increment.
> 
> ...maybe pass rx_buffer to i40e_get_rx_buffer() ?

Surely the compiler isn't going to actually reload here, but yeah not
great code wise. How about I pass it the buffer and rename to
i40e_prepare_rx_buffer to better match what's happening now?
