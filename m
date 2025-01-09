Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A80A07EF4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2025 18:40:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC06540718;
	Thu,  9 Jan 2025 17:40:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SU-LvvrwRiXN; Thu,  9 Jan 2025 17:40:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D60DF4071C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736444414;
	bh=tWpZAtZ5fwsLcgO5aqlcO3OYh1NgLbgjWHyNFFao33Y=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uFIjBVlzeHgUS5/oFQbeR4up99SoMFqzoc6ZTivlMRZssNwFryyaJ6/ArWJceNOJj
	 UUJDLrzESxfElV7NGgsbt9mu3xTehTLivc2FZD2HNZFsL1iEiuHP8qQNYO6GnLBJDm
	 ZNyzpOTTia1a3CkmDrlgCJ+Ai5j0t7Vp9x/awXcZ6JzrHr35SSH0NvaACmVlHslcKL
	 FMMvK2n3IsvETcVIm5LZ+9e+pEwoeCs/4UgPjaaVDb97yQbYqZxVN2WB1T1b7TJyy9
	 9/YmpTgJw3DYRnB0Ul3K7/0M74yTOIpdKWOF8sqrM0JoyA1jpmAZjHWLIgFN0e4GOb
	 B+ZsD42bmn8Nw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D60DF4071C;
	Thu,  9 Jan 2025 17:40:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 50052940
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 17:40:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B24E40312
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 17:40:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8vDMC4pPneic for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2025 17:40:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1029; helo=mail-pj1-x1029.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 52101402E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52101402E6
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52101402E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 17:40:12 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 98e67ed59e1d1-2efb17478adso1946950a91.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 09 Jan 2025 09:40:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736444411; x=1737049211;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tWpZAtZ5fwsLcgO5aqlcO3OYh1NgLbgjWHyNFFao33Y=;
 b=r1XQp/33QhpwWanB2w2100yNjlP49nF+rIIPWzOOnvRGdKk5R52S4B2mQUp9TbcASg
 /F/aWHdA7OtXw9gLMWm55wPCurie6iRZc+uV4xP5Q5wosROOC6NFgOlPOmGasllV/J94
 SfNby+NVugFgroK+xT1j9jsrNxagbBkjSs7K7fOTFxnyEZzvImGduqdMNNZ4pEACzn6z
 FmuGBE22iKjCxxOWAeieQUo24b+1dM+sRNTiYJktf27AxHNeT8AdGxWVi/7Ubu21OY3r
 Hj0KP/4SFhXGVI+t1eU9JB455F4imArprz8ECjHDOfq8lCAxUeo6gLNrjt6+2t3L+CEK
 0pgA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV57wiOO0X84Qmk/J034M71yVwRFGCDIP+0oOmDBwSIoCnN1KZQMygqMmSk8zDF+HftNWQxGGxaa5Tz2h+zp80=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwnaeT9aO6GzWs86qxf/NDQ75qXgJlsv1COkF2ANlQBq0Dm6ATR
 Sn0CJqvWHaUYx+aYbDpD8++XRGRoL7MSaKCAkA3jidohjwUZPEU=
X-Gm-Gg: ASbGncsUVn+FSJBnU8ba3tN/tl+MC/Y/8JBfg8aY3XoQqA+fF41Kd0br/+ehsvo/Ikr
 OLdXJmS/TQpi9MTKBqshI8VdwzaClw7mfbKo/sF87vx/8wiAoksBccbEuxn0ij3Rv3r6sRn9vYB
 lND5IRev+FZD6NKUjmM2RZHZq36DuQG6uxAAENI8yAu/9hYcInTDrmoMBS6+dBpyvoz4EaRf1CE
 h7J7c/3gHNDG4S4MPLhNqtc0LZ1vQDpb5yeWNkBv1LKXa5Cm+VwCl32
X-Google-Smtp-Source: AGHT+IEZHpA+1As7rYRP/wbYTv7BBI8EycFV1R1kQaORb6ULu5g6y7WttO6FZ+OmR/qIEMsz9TCzbg==
X-Received: by 2002:a17:90a:d887:b0:2ea:7cd5:4ad6 with SMTP id
 98e67ed59e1d1-2f5490dbefemr9659697a91.32.1736444411540; 
 Thu, 09 Jan 2025 09:40:11 -0800 (PST)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2f5593d0911sm1848116a91.8.2025.01.09.09.40.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2025 09:40:11 -0800 (PST)
Date: Thu, 9 Jan 2025 09:40:10 -0800
From: Stanislav Fomichev <stfomichev@gmail.com>
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>
Cc: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Willem de Bruijn <willemb@google.com>,
 "Bezdeka, Florian" <florian.bezdeka@siemens.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Bjorn Topel <bjorn@kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 "Damato, Joe" <jdamato@fastly.com>, Stanislav Fomichev <sdf@fomichev.me>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Mina Almasry <almasrymina@google.com>, Daniel Jurgens <danielj@nvidia.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>,
 Martin KaFai Lau <martin.lau@linux.dev>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>
Message-ID: <Z4AJ-pIyAUbXJJpx@mini-arch>
References: <20250106135606.9704-1-yoong.siang.song@intel.com>
 <Z31bQ6xEkyQvbutN@mini-arch>
 <PH0PR11MB5830D33B679A0ACD3FD6E23CD8132@PH0PR11MB5830.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <PH0PR11MB5830D33B679A0ACD3FD6E23CD8132@PH0PR11MB5830.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736444411; x=1737049211; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=tWpZAtZ5fwsLcgO5aqlcO3OYh1NgLbgjWHyNFFao33Y=;
 b=SK3BZGmOV9Cr9Co0Ynj5JRMpsNjXQhzkxIqzd00KwNKRndiIDAaLGxCisCGT2HST3S
 Y2zqRgLzr7WcTi1ejT3AsmxCsP3GIhXsAqYBpXxi79+cAYD+d+nepUh2QDZqqsjt7Wxn
 ETldhp/GxZRLhxJ6rJaZPXchyVTVqyfQbyHTuZHD51MG7pPrPqNqTyXz6+eU1Q45+LnV
 jkcLljg7FK3Ss1P7+TDuBIvAV5CHVsyJ+Lv5Pmday9OpjNGIFi2d5GJEYuFmQgr0+tiz
 Ij30IcGvmtw/1VCQh7Qg1W/V/ks1X+2qSD4dJFrhv+XzzHGmD+FxMNF8JVuyU2YXEXLZ
 bvjA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=SK3BZGmO
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 1/4] xsk: Add launch time
 hardware offload support to XDP Tx metadata
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

On 01/09, Song, Yoong Siang wrote:
> On Wednesday, January 8, 2025 12:50 AM, Stanislav Fomichev <stfomichev@gmail.com> wrote:
> >On 01/06, Song Yoong Siang wrote:
> >> Extend the XDP Tx metadata framework so that user can requests launch time
> >> hardware offload, where the Ethernet device will schedule the packet for
> >> transmission at a pre-determined time called launch time. The value of
> >> launch time is communicated from user space to Ethernet driver via
> >> launch_time field of struct xsk_tx_metadata.
> >>
> >> Suggested-by: Stanislav Fomichev <sdf@google.com>
> 
> Hi Stanislav Fomichev,
> 
> Thanks for your review comments.
> I notice that you have two emails:
> sdf@google.com & stfomichev@gmail.com
> 
> Which one I should use in the suggested-by tag?

google.com should be bouncing now. sdf@fomichev.me is preferred.
