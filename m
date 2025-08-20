Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9874DB2E134
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 17:33:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BE1383BA6;
	Wed, 20 Aug 2025 15:33:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DixWSkNN2aG6; Wed, 20 Aug 2025 15:33:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5A3183B5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755704002;
	bh=CFiBinjOkqTeTTRLQMbijMZjq/eImrXz0BMlfgI32uI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Pw8Fe+nWSZ1ayGYFy1fPp6OTb0cPd27DaMwdWVaz18k5nUCdRmwdiFXzlMO8W90gt
	 udU0NQsjWGMo04j2KgD0vDCv8m9S2z+9qU5i5gm1eECIPbNH7mreDMX8CMMH+YSypz
	 JtoDJmArmvoNhAAgV3p959G2mZAlgpoPdZGzf89j5kk+/3OXHhu/uchjbTAONLlARr
	 QFbQzkqVxA0UsuL0S/eR67VUldUT7nIK+b97Ps6cr+BU1TrBc86JHlsXN54FtCb6q4
	 DkilYFbXyrMCA1nBToy7t+zg7N+59e76b398/gKb9N1xfIGZ65ElnVxVsi5xJv8hGr
	 WCvpj6zLWDYnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5A3183B5A;
	Wed, 20 Aug 2025 15:33:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 58DFA7AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 15:31:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3FF9760E02
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 15:31:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i2BGjzcXQ96Y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 15:31:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1030; helo=mail-pj1-x1030.google.com;
 envelope-from=calvin@wbinvd.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A2C8960E82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2C8960E82
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A2C8960E82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 15:31:37 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 98e67ed59e1d1-323267adb81so62713a91.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 08:31:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755703897; x=1756308697;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=CFiBinjOkqTeTTRLQMbijMZjq/eImrXz0BMlfgI32uI=;
 b=Al5l6VRIcpCugw9g+nGb5hnf5wTa0Fjgpq6QDkgpd86uHO1q3CJB4Rbq2JsFECjgx4
 lFRm+fiGwrCKVdjhy/tm4yocuT94ohpvZTbD5nvuYYEaz53c9RQdnqnCUanWZiNIP/jr
 rtH2ooNpVJ3Jg2aoC4oJaGrjJ/fcn1629iu1tDsqu9ApfyUw9vNWbW5v4FtIDJCxfIr3
 Rj6lMxiCNh1blDMPbuVdq42IxBiLmFD/x6kZE/nU63ItYNYTD2SvATEQLUZoYqwSaUAs
 FB3dRWLKztuKOfAfRnEPkcI2ffffXjWMjxfIli/1kjwucdKp2TWnNYRO4Iy9x9PKcinG
 uxpA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUO7H7/hrgaUoC4VgVNCJtyG0SUtHzpFMGVlwHXU6fMT5pi0U6ijckEWYp2OMTiWNZUfsRXVJpQnmizDBDRCxI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyCqvYst+If1PuDtxmoPSrQZzfDeqGaCMyrjHJuy1J3Mljc8711
 54VH1i6sldMgscEJNsisnZYEJiy69Rmvme+YHo6qZCTS4/jSSsjC3Cnvy6kQpVtDxPkBR2fvgU3
 zsXa/JfM=
X-Gm-Gg: ASbGncs2+skFm57p5gtLYOc06gnTUeNewRXxken2EESqcq28a0Ijxj1qGZ0Rg9ZUfuu
 skHUA5fBCkzaXKYnqjTGZueh3vwdkW6dLrkcg77ErTCTg2lcHxQ8N8lLc8DXBynaZfrKGwNceip
 RkmukVT22s5eob+r2zEIHGo9pNlBs/Oix91AiJyhwj1f3o3yZT4ZdH7r+EsobzANoFWIuzySIuD
 BbLq2uGtY9bDgQIv6K69pGLNy0hL8iEJILjaL+WT8xGb2UCrg80x3YRFakGsHFGh2lODSsWtC6q
 4WPXZEUBe41OXWGVP3na9W1H3H8XaigxoKgYlXxieGlJvgABlO+VF1KPpofJ9qdOjnA6jxxcMVY
 02/hvzLGjrSTjvkNg8Q6LMZp1
X-Google-Smtp-Source: AGHT+IFa+65EiF5gOLmsUqiKDfGi/hjEovv5LFIEhAxpf/e3lDkv/Vl67MHoAyiAjrypV/nXob9hNw==
X-Received: by 2002:a17:902:f98d:b0:240:1953:f9a with SMTP id
 d9443c01a7336-245ef0bd96cmr33559625ad.2.1755703896739; 
 Wed, 20 Aug 2025 08:31:36 -0700 (PDT)
Received: from mozart.vkv.me ([192.184.167.117])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-245ed517beesm29774255ad.134.2025.08.20.08.31.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Aug 2025 08:31:36 -0700 (PDT)
Date: Wed, 20 Aug 2025 08:31:34 -0700
From: Calvin Owens <calvin@wbinvd.org>
To: Michal Schmidt <mschmidt@redhat.com>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Ivan Vecera <ivecera@redhat.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Message-ID: <aKXqVqj_bUefe1Nj@mozart.vkv.me>
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
 <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
X-Mailman-Approved-At: Wed, 20 Aug 2025 15:33:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wbinvd.org; s=wbinvd; t=1755703897; x=1756308697; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=CFiBinjOkqTeTTRLQMbijMZjq/eImrXz0BMlfgI32uI=;
 b=X/w0NIH/6go5stK+guE24qgI6t20CgNrrHP8FeyvH0l5CMX8x7JYfG983onVXqA7TE
 WBOqv7yCxFDcGRP75PlMsaD/XxraBuj3oADI28q18wKQq5qpZTjRIWtphkEntnEqXzMc
 fW93Zqt82EbdJXtx6YvGw3dbY+f0eUDDBna8s/UFHD8s9tlRm/YiC3+zWKB0LEp50ocw
 qU6JyPOOcD5yjozQWxgLoCnPvzbNAT1okj+b7KMJLqlJV1bobrREV9hgfCEphmpr5msF
 VFwfxIfkgdrtCdsXJ6FrNNoPMIDMyHek36fw2wwL1qbbUZAM8apiFDmCI7tDE/noj5MV
 hCPg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wbinvd.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=wbinvd.org header.i=@wbinvd.org header.a=rsa-sha256
 header.s=wbinvd header.b=X/w0NIH/
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
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

On Wednesday 08/20 at 08:42 +0200, Michal Schmidt wrote:
> On Wed, Aug 20, 2025 at 6:30 AM Calvin Owens <calvin@wbinvd.org> wrote:
> > The same naming regression which was reported in ixgbe and fixed in
> > commit e67a0bc3ed4f ("ixgbe: prevent from unwanted interface name
> > changes") still exists in i40e.
> >
> > Fix i40e by setting the same flag, added in commit c5ec7f49b480
> > ("devlink: let driver opt out of automatic phys_port_name generation").
> >
> > Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
> 
> But this one's almost two years old. By now, there may be more users
> relying on the new name than on the old one.
> Michal

Well, I was relying on the new ixgbe names, and I had to revert them
all in a bunch of configs yesterday after e67a0bc3ed4f :)

Should e67a0bc3ed4f be reverted instead? Why is ixgbe special?

Thanks,
Calvin
