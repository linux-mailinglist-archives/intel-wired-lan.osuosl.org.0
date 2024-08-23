Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0342E95C83C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 10:40:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05E7141295;
	Fri, 23 Aug 2024 08:40:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id syAuMTRkDgAn; Fri, 23 Aug 2024 08:40:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F1774125C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724402421;
	bh=/gkKdkn1kch9YHgvbfB4pJh7hu8uTpCucVk4jPgCW2M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bURZmZLfeU56Y0YnyLkF5cBW/XUIPoU0CkIp18Alw775JyPkOSdgA4DtvrTEPjjna
	 Xz+8j3ZBA82ApuH1nDcYGJCiTNNruLW9IkUodULRSloSQR6fUfmt61hLv5IAOj1KrL
	 cjfjmHVhF3ZLxcQqf9uTTAvVXcRC6ZsyDRHSg6A57z7un1bfYhgeSbtUbVsDKF7Bfq
	 j62U6j8430O0btqoXQ040+ZURLH5LXRbQQai+XJWvo3kECmVH5rkIw3VRuyw+ns7YH
	 oc4v0KZVTE5v2jhqhFmlFZUGSuwg/oeXL3gooH1im5bQQ3jYdY+AKsN+FFjuhCELWy
	 N/lUhkEbkyJmA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F1774125C;
	Fri, 23 Aug 2024 08:40:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C581C1BF366
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 08:40:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2771402F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 08:40:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qJ0r8kcIpDdc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 08:40:18 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52a; helo=mail-ed1-x52a.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0FC904028D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FC904028D
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0FC904028D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 08:40:16 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id
 4fb4d7f45d1cf-5bec7d380caso1990471a12.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 01:40:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724402415; x=1725007215;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/gkKdkn1kch9YHgvbfB4pJh7hu8uTpCucVk4jPgCW2M=;
 b=e2yRf+zouch9t/Ht6bB6ss9YKcPEqMImZ42n/gfv051M0s2/KrYuHz+H50yFy/I6Hw
 pLZ1X+x7wTp79/SsIljUNhuNQjjEtNoqN+nG1jpbIOTPX5YDFjNFUPz+OseCxYI/eSD8
 cMVR3zxC5BbyvKYtfDgfDJ63d7H/p82rUEttjq9Fnjw+TAeFY+TaxCCES44OS0AowfzR
 INIl5ktro2531rgXjZ5iCzOyzKpTkHK6LpUx2+OBo34cHZYB7H+R1PhlEU/UaK55AitJ
 RAO9Pa5Pp0lO12tX5sEBU/4+EVqsHXdlnVIxKksToZ5Rg5IOgWgGGNajoDF3959l+tbr
 +soQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV/X03B1/Opfd8HcgIjJ0CEakNiftOA2SNhztaY3mZKnAyl4ND3PGMdQnAw3b+7JIcvxrKZgxPlURHhcjYCQUQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy5fcW0vO3T7DvjAiEFwrSp5hynh6iN5Obk+agsqwos8ZU6GcKp
 lHjiceMokBFup1JIrXrtWCmbp4dv9XGAH+IuFWvOHxz/2XNBBQheYeydGhRwH9A=
X-Google-Smtp-Source: AGHT+IGaPZGfsEcdpD0z2HooWb5CW/e+RVLq6gXdB73IpyHPSTkCKbWsNG2C5VF/YTe9NZwWRUVqtg==
X-Received: by 2002:a17:907:7e95:b0:a86:668d:c0b2 with SMTP id
 a640c23a62f3a-a86a5189298mr133154366b.7.1724402414734; 
 Fri, 23 Aug 2024 01:40:14 -0700 (PDT)
Received: from localhost (37-48-50-18.nat.epc.tmcz.cz. [37.48.50.18])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a868f220324sm229420666b.44.2024.08.23.01.40.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2024 01:40:14 -0700 (PDT)
Date: Fri, 23 Aug 2024 10:40:13 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZshK7RwzHO_vZtdN@nanopsycho.orion>
References: <20240822222513.255179-1-arkadiusz.kubalewski@intel.com>
 <20240822222513.255179-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240822222513.255179-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1724402415; x=1725007215;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/gkKdkn1kch9YHgvbfB4pJh7hu8uTpCucVk4jPgCW2M=;
 b=A+9L2WK/hORSNNUHjq8QrAS5/wb2jHgUtYjWjEbh9M1I/ZwU7FtfIFBoLP5JoK+0Rd
 Jfrn21T5RdScN5zxk/jL+aPLd+M49r5Uy5zUBoC2gcRCHK+tfSOsoHBMuM2ed2QUrgF+
 LGLB6KdaCv/7TkZEc6AI/jk1RxnKFOr1GsugSY2P3ipVAHBvlH3kvxzbWDS/MMotNfRX
 nms571EgfMXUxgwfG0KUSw6qZo9woKmFqRSIAOYblw6QbsYA7PjaBDWoIuQ9LxG/45P+
 Pae4wbqDj3vcP/2k+IhSASfm86XEoxKRM/1ueoVQNUHYv5yLHA6aFivPfTTO7+svaJPp
 7Taw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=A+9L2WK/
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] ice: add callbacks
 for Embedded SYNC enablement on dpll pins
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
Cc: vadim.fedorenko@linux.dev, corbet@lwn.net, netdev@vger.kernel.org,
 donald.hunter@gmail.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Aug 23, 2024 at 12:25:13AM CEST, arkadiusz.kubalewski@intel.com wrote:
>Allow the user to get and set configuration of Embedded SYNC feature
>on the ice driver dpll pins.
>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
