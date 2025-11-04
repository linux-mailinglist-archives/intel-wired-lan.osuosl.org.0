Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56513C30C58
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 12:38:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BF9660C08;
	Tue,  4 Nov 2025 11:38:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xGiH-tCNmQR5; Tue,  4 Nov 2025 11:38:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD84360E4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762256310;
	bh=ty8EjZTIjoYFxQNfFxbRC87ROx45/mTNFipe8IcdbeE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=geg1AonTpKWgAYM0GKNa3eBXJBxqQQttqPoNzHD7qlBuFprJd+g2D/z1c/R2tFY5/
	 GziX+Ll4emBdda/sxrGp5SnIvM50fE4JmkpxipLEu0lroLnyCpc64X9KrHgfmM41DG
	 gxtyXw1Nfl+Noy4z/gXGcJMkLrAKPDiY3o9+292NrUauNBcZqWskIlVJNclfkXJdLe
	 vfDE88i55DyR+BsKEM/uADgxEUD6sys86OwNgZxRYGQG2nMObqQkYl7+wATwl0mHC6
	 4JVzgBzPHQhwNemsNlaEekVDtq5DyD4Iv2h7jAm4M9Gz6v3A3uitNxzduhepqP4Y6Y
	 UiSlKFbmcGLwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD84360E4E;
	Tue,  4 Nov 2025 11:38:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B202462
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 11:38:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 815AD4043E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 11:38:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MgNHxTApz9kM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 11:38:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f2d; helo=mail-qv1-xf2d.google.com;
 envelope-from=daniel.zahka@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AFA244009B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFA244009B
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com
 [IPv6:2607:f8b0:4864:20::f2d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AFA244009B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 11:38:27 +0000 (UTC)
Received: by mail-qv1-xf2d.google.com with SMTP id
 6a1803df08f44-88025eb208bso46378276d6.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Nov 2025 03:38:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762256306; x=1762861106;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ty8EjZTIjoYFxQNfFxbRC87ROx45/mTNFipe8IcdbeE=;
 b=kfGXO/l7rbLzBH7NGnUaHm8Whw8qGlzb88AwuVwvfyj2agujj2lt2LTDkKzK2Zp/vu
 oV4/y6EfWfJ3E4br9ipeUpIr408Q/5wIEgCkxXBTwzKn0LSWXwpy15/SrInLRT8LvAfH
 98yRCBpryRrAAiC+vOsBP11mDJ6rlAIMzW5HGCv2hwiQLsKeyJXXyBegaxu+gSbp3goY
 Xf1jP6Dvj8g85MUvAcpmlsoKIU05VrJPQ5UVyWFIKmy7uet3xZr4vP7Jw6p1XAGNgzF/
 APIFziFb1aX7s30uVZy6NNRXv54SOnNBs18F5AEen9afcFeJvL/pUTux3Bo6KGuA5qKo
 Epuw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVUz0gXugrOUt9tro9UbWd0v4gr4JdVtYlZ6PSjknnUzka1PGDM01lnkVGFbcqs2OA7oIDtb1fLFJaryPWgy3s=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywu+AXJjgxxr+DLqb5JnCNKad0HiMGeMOrcGu7xOx5vZbblZ5hj
 28jA9MokaJ4RycdFH0OmrFFQTx/ryYRdt9va7Y1v9R91IvHxvxEaCtz4
X-Gm-Gg: ASbGncspjZr+o3UrttdD2GkLwvXWB4mIAEJ/g71CPld2vglRxqOo6CVuKqYCWqetflr
 Qbe9+Zjbm40MS5vkH6h8pBZUQEU/16O6Rsc5LDrA3TqE+JuTC9ZaHSkb1l8vgS4+7Yyv4NwtgJU
 KJD83MdOFh88nNpXsxosLNVFxlL3qEksJ1PUFMULWvdYR2RsGCzL72lEIRUch3uasOYaxllFqh0
 e8SMFnMfFkPaKOTaWKxMgOtOiTQ0Jgq9/WG905NZELcMrfUzSQDm4eI7hEC3NZVK2AIV8UIfEAj
 s8T9cnzhd53ZhNF++7mMQlsMfp/be816qjox8ERwJctc93nRQxRcN7IZ4T8rYMtUQEDm1ufnks2
 pI3/870XBQFCxAWzsnF2S6JpK5mXzEts1fsCbiB2WoKnfPLUit7V1KWLoBa5KtYMmguAU9Q6Yz7
 G+7m6wVouwoUuplroxP+z8XkhmH1AxXzk82Hh5FculJ9cTdOIaMfMrh1Q=
X-Google-Smtp-Source: AGHT+IHUdWJka00diDOSm3gEz5fAX+m1eynGGsYAsxJbIC9pNdUYm3UTMBl+lsslEkQP9lwiDDKGSg==
X-Received: by 2002:ad4:5d4d:0:b0:880:54eb:f65f with SMTP id
 6a1803df08f44-88054ebf940mr96218996d6.53.1762256306128; 
 Tue, 04 Nov 2025 03:38:26 -0800 (PST)
Received: from ?IPV6:2600:4040:93b8:5f00:52dd:c164:4581:b7eb?
 ([2600:4040:93b8:5f00:52dd:c164:4581:b7eb])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-88060e9566dsm19023796d6.47.2025.11.04.03.38.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Nov 2025 03:38:25 -0800 (PST)
Message-ID: <db5c46b4-cc66-48bb-aafb-40d83dd3620c@gmail.com>
Date: Tue, 4 Nov 2025 06:38:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Srujana Challa <schalla@marvell.com>,
 Bharat Bhushan <bbhushan2@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Brett Creeley <brett.creeley@amd.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>,
 Geetha sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>,
 hariprasad <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Tariq Toukan <tariqt@nvidia.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>,
 Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>,
 Manish Chopra <manishc@marvell.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 Vladimir Oltean <olteanv@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>,
 Vlad Dumitrescu <vdumitrescu@nvidia.com>,
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org
References: <20251103194554.3203178-1-daniel.zahka@gmail.com>
 <20251103194554.3203178-3-daniel.zahka@gmail.com>
 <mhm4hkz52gmqok56iuiukdcz2kaowvppbqrfi3zxuq67p3otit@5fhpgu2axab2>
Content-Language: en-US
From: Daniel Zahka <daniel.zahka@gmail.com>
In-Reply-To: <mhm4hkz52gmqok56iuiukdcz2kaowvppbqrfi3zxuq67p3otit@5fhpgu2axab2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762256306; x=1762861106; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ty8EjZTIjoYFxQNfFxbRC87ROx45/mTNFipe8IcdbeE=;
 b=FIh495bqYZWhg1xTmHZtXbQk5wM2nhzsiqNPZDwrLWT9wi49nrV2R2+lJfdVwV29JF
 LfcHd41vIdtk8zYftkA4Pa0fiLvtdRjJ+QiMoutIA2lY0kCGz5DuL/uUBgizgIBvrxdD
 CNDpd06eOKD9Nro2y0F9wS9h8sQysvAnZgtZvl18TuZiVNty1uhyiXpj4dPLqBFxXpx+
 koYJGNhTWpUD9WWDmsIpZFlvJVxhKgY9aPt6ggPQRqPKryQDphoW65zclwp4WGBupF4/
 R/WAc5unsNaOhYY7OToBpGhmecAUyLr+k/NdrIJ9Ja2RpNfEZPJbuDAsAgV+8MUjrKZg
 CEyg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=FIh495bq
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] net/mlx5: implement
 swp_l4_csum_mode via devlink params
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



On 11/4/25 5:14 AM, Jiri Pirko wrote:
> I did some research. 0/DEVICE_DEFAULT should not be ever reported back
> from FW. It's purpose is for user to reset to default FW configuration.
> What's the usecase for that? I think you could just avoid
> 0/DEVICE_DEFAULT entirely, for both get and set.

I find that 0/DEVICE_DEFAULT is reported back on my device. I have 
observed this same behavior when using the mstconfig tool for setting 
the parameter too.
