Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D20869B89
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 17:04:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6434160BD1;
	Tue, 27 Feb 2024 16:04:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nc-ahIfbIIGO; Tue, 27 Feb 2024 16:04:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD97560BCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709049896;
	bh=A2KSc1kXng4vnsnFRz8+dsnD1ubtZKrqhs97kWLQn+8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qdKc4spYHBfqY/CIUdTzAgk0UY+lBbzj5OLUSqzP6DcStf3ZbfJhhuPy6f/zrglPb
	 Abqe+j/h+zVjXWb+mIsstyE32fgjtsw8r/uEnvLs/tpfHWBWLWJwgG9UOWMM2ocZhb
	 UhwyOwt1wiAy8lsMQGAqw3wiX7DAhaId/fnYa3zO0nlZfssL1fhLsCtB5Gyj9JzeGK
	 ook/CCo3os1wQTBAzpb0eX4t4yit14tUUOBqSHoTE6/MCkRMeBHAXapKvUjop/VfJL
	 +V1JxAhStxviwFF7dL63MZPUE0/RDuoxpq0z50fP6ZxcUxVyFohpUywEHJA0aHiuFR
	 dBYajSqCFPi0w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD97560BCF;
	Tue, 27 Feb 2024 16:04:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E00F1BF30A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 16:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 96D8D40735
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 16:04:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w3AJs-VVlQrC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 16:04:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::436; helo=mail-wr1-x436.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F3431404E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3431404E9
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F3431404E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 16:04:52 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id
 ffacd0b85a97d-33d509ab80eso2103340f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 08:04:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709049890; x=1709654690;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=A2KSc1kXng4vnsnFRz8+dsnD1ubtZKrqhs97kWLQn+8=;
 b=DdWolmxxbFbkbxGxQHJ+7vKxEzDdYJfYRXkP+6yuNq5fF/7AjdkClCCSWToA9NSFvj
 3Qzcqidmex6VGlH6c9FHDrZHjBbqZIP6E1983v4FcmIZtJS7ArlFi4kYm58Hjoqalhr0
 9mhFSKj/p/S3U5dot7EcQwQjtSQnpQ/LsqGQ8mjCB6AFYcCwQ6h61Zi05K7GY967eTai
 Elz5Xi1/eI0p9fTTSjLXgbboMiDD/iuQ0uuJkaNJLs7zzunTb92U7xX7hzFj9L9/DEB5
 4/WFEEwAV9+cfvK7KGwD6Y35XEv11umfgYSr6ec+pqqNhKeLJ1mtViz3c+cNtR65bqdU
 /oyw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW7yaSpXX2CP99rpOEYRrSaxiqSAUwYFOHTGUyDABe071oasG7EUIXBmMcNMFiYI3BoO33Tjx5Y4GIQnwSLKHw4GBBeASPK7RA0Cv01q3VwBw==
X-Gm-Message-State: AOJu0Yx5z3ee/lCNjpppe02XjUcdqiU757+X+dMbnEXeL1JPbjoETEgo
 EqixrcKiNPRZ2FPoj52xghF3mHX5jnDqxGUhaB05YWO2tQQenOq4eR5+1Xuw0nw=
X-Google-Smtp-Source: AGHT+IE7AVJJxuP/gDh319ZarFVTxtj+VRIQ0zC+hJVXEmgo7jSldIgMMYdgKgIzh6lYXxrdjukdMw==
X-Received: by 2002:adf:f390:0:b0:33d:8d44:5c99 with SMTP id
 m16-20020adff390000000b0033d8d445c99mr8372043wro.1.1709049890446; 
 Tue, 27 Feb 2024 08:04:50 -0800 (PST)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 q17-20020adff951000000b0033dd1a3ed0dsm8096378wrr.97.2024.02.27.08.04.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Feb 2024 08:04:49 -0800 (PST)
Date: Tue, 27 Feb 2024 17:04:47 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <Zd4IH1XUhC92zaVP@nanopsycho>
References: <20240221153805.20fbaf47@kernel.org>
 <df7b6859-ff8f-4489-97b2-6fd0b95fff58@intel.com>
 <20240222150717.627209a9@kernel.org> <ZdhpHSWIbcTE-LQh@nanopsycho>
 <20240223062757.788e686d@kernel.org> <ZdrpqCF3GWrMpt-t@nanopsycho>
 <20240226183700.226f887d@kernel.org> <Zd3S6EXCiiwOCTs8@nanopsycho>
 <10fbc4c8-7901-470b-8d72-678f000b260b@intel.com>
 <327ae9b5-6e7d-4f8b-90b3-ee6f8d164c0d@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <327ae9b5-6e7d-4f8b-90b3-ee6f8d164c0d@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1709049890; x=1709654690;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=A2KSc1kXng4vnsnFRz8+dsnD1ubtZKrqhs97kWLQn+8=;
 b=wsEeNyo2QnYo72Gs8k3yMse5LCdRUpUJRe6p+ElOp8uUxprTgz2qHnEq/xB7dIgN5f
 NOpC8gdgvN+NuBY20ns6nW46L6GuchsEEBd7NWBV6M40ulJoiaWpMx4OMov6QDP6EgfS
 GJ8TMgA17G9/h4D9XMT5xo0E6pG6vbaMzuvrBitP393pbec4zfxL2dSulzEmn7eOwPZV
 /B1LBj0HUbDmnQqj+dYxg2rETKJd0qqhSllnV8saKvFyYYZx7eIJ+smjerQN9gs9O7IU
 Q3Vf6A39hspzol7XEE8m+7b1vvDnilBUamXqpJ+Gk+zyfgk77LOfR2D9r2rGyx+qQ8Zz
 n3tQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=wsEeNyo2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: Add
 tx_scheduling_layers devlink param
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Feb 27, 2024 at 04:41:52PM CET, andrew@lunn.ch wrote:
>> What if it would not be unique, should they then proceed to add generic
>> (other word would be "common") param, and make the other driver/s use
>> it? Without deprecating the old method ofc.
>
>If it is useful, somebody else will copy it and it will become
>common. If nobody copies it, its probably not useful :-)
>
>A lot of what we do in networking comes from standard. Its the
>standards which gives us interoperability. Also, there is the saying,
>form follows function. There are only so many ways you can implement
>the same thing.
>
>Is anybody truly building unique hardware, whos form somehow does not
>follow function and is yet still standards compliant? More likely,
>they are just the first, and others will copy or re-invent it sooner
>or later.

Wait, standard in protocol sense is completely parallel to the hw/fw
implementations. They may be (and in reality they are) a lots of
tunables to tweak specific hw/fw internals. So modern nics are very
unique. Still providing the same inputs and outputs, protocol-wise.


>
>So for me, unique is a pretty high bar to reach.
>
>	Andrew
>	
