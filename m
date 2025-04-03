Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5A7A7ABAA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Apr 2025 21:24:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A14F341955;
	Thu,  3 Apr 2025 19:24:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lPEQc4hKo2pF; Thu,  3 Apr 2025 19:24:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13D534171C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743708273;
	bh=/bCjRJO4cl7SlqWZcp9BLDfyhGrFLi70hmuoopWDyBo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8DDiKJi3A7s88wBZQYuNp5aYwgd6JlQ4scheAVjW1knJtfMZXnbHCT99GwIhS9zJh
	 69HJ8jWF3C72HdZLpYPVK15jngs0oJH04FA40mwtMp7uuGXHyrxY55ItLKwMjkyCrh
	 z6+FpJn86EBP2cRn+OICROgTvBGxxu86YWvprBVev9oI97/6wqiUY11UqPM77wLl2h
	 dHWov/qfMwzLGE/0TDGVU5JqMf4wPjuNwFZ5eJewMiNevAn9qqyorMS9XgGCYgBYF0
	 loogKVornlnQoYfVjOiYf1wkJ5PM5bt95poI+lNhUCrstU+od3fcusIufkKH7Io41D
	 clp3OqSrmCKxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13D534171C;
	Thu,  3 Apr 2025 19:24:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D32D3117
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 19:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C426D4171C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 19:24:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jiLgEr_VYKwP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Apr 2025 19:24:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::633; helo=mail-pl1-x633.google.com;
 envelope-from=zachmgoldstein@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 299AB40EC1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 299AB40EC1
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 299AB40EC1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 19:24:31 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-2240aad70f2so45245ad.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Apr 2025 12:24:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743708270; x=1744313070;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/bCjRJO4cl7SlqWZcp9BLDfyhGrFLi70hmuoopWDyBo=;
 b=hRHK/RlnqCZcKX1mQJYI7RuF6R2UdZ4bE0hbgQAzLITxmg2r6FfeSiSHwLLv5iPHfj
 BNWfM2BPwBxd0IzVovYcPtBNIPSjiNwVWOe0s72q+jp8obDGbiNo91pQk7SZPF98wjYg
 Wjjil5NyrgYm9XjSd2c6er4aTXicwHtHIh7Avarck30sGmHzaOXAVeVtwP0ch+72s+hE
 i37I/QDDVb2eo0Qsed02iAhxgi7KUn/2E3zQ2+1ONIyFexpmro9KqJdHOKKIZLHHjID6
 C0cgGJho79wxFQu9ncgFFrSvi84Gx9/PQvtO2GOO40i1SClQZ13gZPdaARi4rqmVuee5
 kHMg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWh2R9qg2NbJZKk+hYd1Oh8bLHxcscX8QudK5VXUbOhyPJUVv9uleMefJFD/1keDJJw9TyXij3ICuTIcdCisOk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyT+OjBbqaOx8jSnjdssDGImgUYUEuXHfqoZn/oXV0TFR4PAhhv
 T5ob/La6a7ci903fkFlLT+T5s+P7Q61tZMoNKMmWUIdrilaB6MuoMPIkJPnU
X-Gm-Gg: ASbGncuGbTeNp/NRUogcCeZcu0htIkLEELlooSE4n5hoLxETHJUeK8MY6cGVj3WAfEw
 lF39Y/Mv7yG4F2kavdNOG4ngYTjPBYX8p1/h1UYMjaO+wctr9ugh7Voe9VCPU8iYJ8H/nDSTedY
 w0XYZBrRVjvZuEPSPrkEBq7qhVIv9QAj0Ax8OjLXbVZxHmCNerj/vxumtjFX8T9JioOlNJx7bPQ
 N6lc1RytVnNM3Dn8sBOxkwzeBA1j8Rl0gJ7dp3uptZKTmXrlEVqlUfp5NI0C/fmoAuk0tY5RojJ
 7rFdfSslNJ46zIe2BElSlEkXJf9s2Rk5cizpLFt/0+iLVjc+1vVZ3cEnDvfPgOdfBU2dhQCjk7r
 vvsXYK+adYY6uNeE7
X-Google-Smtp-Source: AGHT+IE7LoCBd2jE8kYcDG5LTgonl9ioRJpLe7eH/HBGs0rxcqjLca9D3bJfx83YLMVY9jTP+Lz+qA==
X-Received: by 2002:a17:903:2450:b0:223:5182:6246 with SMTP id
 d9443c01a7336-22a8a1c8eeemr420045ad.23.1743708270200; 
 Thu, 03 Apr 2025 12:24:30 -0700 (PDT)
Received: from google.com (245.199.125.34.bc.googleusercontent.com.
 [34.125.199.245]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-229787727d6sm18353575ad.229.2025.04.03.12.24.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Apr 2025 12:24:29 -0700 (PDT)
Date: Thu, 3 Apr 2025 19:24:24 +0000
From: Zachary Goldstein <zachmgoldstein@google.com>
To: Madhu Chittim <madhu.chittim@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <Z-7gaKqaPTfLXEAb@google.com>
References: <20250402210950.1088533-1-madhu.chittim@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402210950.1088533-1-madhu.chittim@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1743708270; x=1744313070; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/bCjRJO4cl7SlqWZcp9BLDfyhGrFLi70hmuoopWDyBo=;
 b=3rGiOcDriumKJmiSKdnjti8bLI1XKzASFavFJNLU10dfj4L4Af49WU+faLpyWTJljg
 U2aYFN1gMgNfZYvL6Jyoin2RKuX2ZrfcFW4IQmwAsEV9xjHJblKCDGQu3sHf0sVQoN8G
 oaW3QeYn+lWjEpQGlkm2j8W+ooLpmSlskFbCb9FXz+Jxumy5+2oyGnFoU5mdc/G2nkLY
 tDPX7uPeb5OhoUc3JNG1huLpilLRzyZLqj4aaVClh9HoWWTDl+kUiNSWZS/SQ5mNl8Ig
 tqeIKYfrvwKshLvciTxK+PK97ll16BGoD+LrJioO2s2bBhnQ8it+oYxkvp5QJCIpPbO0
 QnYA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=3rGiOcDr
Subject: Re: [Intel-wired-lan] [PATCH] idpf: fix offloads support for
 encapsulated packets
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

On Wed, Apr 02, 2025 at 02:09:50PM -0700, Madhu Chittim wrote:
> Split offloads into csum, tso and other offloads so that tunneled
> packets do not by default have all the offloads enabled.
> 
> Stateless offloads for encapsulated packets are not yet supported in
> firmware/software but in the driver we were setting the features same as
> non encapsulated features.
> 
> Fixed naming to clarify CSUM bits are being checked for Tx.
> 
> Inherit netdev features to VLAN interfaces as well.
> 
> Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h     | 14 ++++--
>  drivers/net/ethernet/intel/idpf/idpf_lib.c | 57 ++++++++--------------
>  2 files changed, 29 insertions(+), 42 deletions(-)
> 
Tested-By: Zachary Goldstein <zachmgoldstein@google.com>
