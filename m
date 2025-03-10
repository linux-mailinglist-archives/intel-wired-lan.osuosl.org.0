Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B09A6A59427
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 13:24:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 617BA60A6E;
	Mon, 10 Mar 2025 12:24:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n649Ny0xeKBx; Mon, 10 Mar 2025 12:24:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACA0360A61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741609449;
	bh=+WnE/5imR3di2EhHXu2vvarTCh376TFcJuzOP6ZCQZg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6DLzBQe0a+FOkfuSOKpThegzUNUYeO3ylXt+PaFOJmPD8z56hwo9vSK97EqxTAtrC
	 tkXE93bmwHRQ69sexf1Z6H033OhW0hiQPkCqMyN3Hzxao0ppKLDQbWuszu8OrJOkQW
	 welQ5dxiWsnCq4JnAiTx9sWCDRRLKXsRlr5d/eT3QHMdmusLQ6yuSxgeA2PkF/xLMR
	 86XPL8n8gRCcVHlWmuhgtVtPFeQAiBBn8hXsp4Xd/no1/MXDuFzYQMdof7HEbCSAAE
	 EUPqybzYiZhWNpEuzCOhE+47GJb+lY0pojW8uOqvXzfJQ+Zqu1fu41h2vdBoexVQvM
	 q1aw9ieYjHLxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ACA0360A61;
	Mon, 10 Mar 2025 12:24:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 208841E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 12:24:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B1A560A61
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 12:24:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q4v2rEYhPjyd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 12:24:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::333; helo=mail-wm1-x333.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7B8DA60A6E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B8DA60A6E
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B8DA60A6E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 12:24:04 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 5b1f17b1804b1-43bcc04d4fcso24588635e9.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 05:24:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741609442; x=1742214242;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+WnE/5imR3di2EhHXu2vvarTCh376TFcJuzOP6ZCQZg=;
 b=bsv5+DzHlIk7WyZjLxSZ9tP/ZCjOsk1A67+WQ1b3LKRifMa7nDvxiIpWNcaGHycyRl
 B3ogGPbxVSeTf8S8dotS+NzQiUrkiSOJ8Fx526n8+7P2cCQZ2BNqe7R6ZYsDewBCMW0L
 fFBmQb4kYhdzB2vHjRvkvTw9xsrmA+MVaNjZBFDgn2SmXiSPA+mj+re6mOtng2ZI/BPq
 fwi+HbALQovI2hIlkGF2wPFZW9yyNaZLGPJW6iToZymFNea0GZIUEumUMOLyfhkz8hwE
 CAwhGlyPWIJL+MYtRiSEVHdKbS9T4Cxi4Bz3yquruXCVQR1YfTLWpMjloKWmWja08pFM
 GSlg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUNr/uwQJv9Co512P5WGHRIudl50BgqRYhzKwZwPAXGRfV9hGHFt3Q30KCwHz/xmBquNELAERNkh1+zK++2DNE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyBfqBYreKy/bgs8pPabxCiHKIg80Q39O7mjpqLU87Ue4XLz1RB
 EM9qxZoVl2KBWoR2Cdbs8bgK+R3YyXvKEQ/V6Xiiud/4PLFUoeT1toce0w9t7iY=
X-Gm-Gg: ASbGncsn2ciBbfZrrexz1QaKmoWzALC14/Y2AoQHVmyeqWwd7QLK1yqHhRx86szwDs0
 D1g93pKYUiTBGGmI+gLcMoBc4rDfUazNQBd5Mi+TBJwc29YAWkprYfEuIP0f9icRBxi2CkZnk+1
 hUGfSi+JfLJdo/VU+dsZme22eP9U03W90efEg38LXo6gYXL+aICIn0kY/64ywBUDFWLdZDG8Zab
 EXGVIGymuFXSbUs4M7aq/CYJk3eyXtHSBUeB6ZQmhBYJFyU7zYELCHJ7cv0cf7F0u4cLfbnekux
 p83q3TG5jI29HxuBFVYM/lpACMdpBfv3CA6KTbwaGXdslwlfhlFM/VjSaeMtpdvHih1bV4g=
X-Google-Smtp-Source: AGHT+IGRKo1cJ5t/lY2j0asL2oDJUhmmPtQ93rExpKoeHtpvDFrye3av9IJEnTSX2X6c/6O1HvKm5Q==
X-Received: by 2002:a05:600c:350f:b0:43c:f3e4:d6f6 with SMTP id
 5b1f17b1804b1-43cf3e4da0bmr31246285e9.31.1741609442303; 
 Mon, 10 Mar 2025 05:24:02 -0700 (PDT)
Received: from jiri-mlt.client.nvidia.com ([193.47.165.251])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43bdd8b04edsm141642335e9.1.2025.03.10.05.23.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Mar 2025 05:24:01 -0700 (PDT)
Date: Mon, 10 Mar 2025 13:23:53 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <ogvnbkqy73hjndtr7ncmuzw7ai2w35w2osaadb2w4sel3pyrry@yqk3csgruxth>
References: <20250306211159.3697-2-przemyslaw.kitszel@intel.com>
 <pcmfqg3b5wg4cyzzjrpw23c6dwan62567vakbgnmto3khbwysk@dloxz3hqifdf>
 <MW3PR11MB4681A62C71659C430281A15680D52@MW3PR11MB4681.namprd11.prod.outlook.com>
 <144fbab5-0cd6-478a-9500-838cd6303a73@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <144fbab5-0cd6-478a-9500-838cd6303a73@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1741609442; x=1742214242;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=+WnE/5imR3di2EhHXu2vvarTCh376TFcJuzOP6ZCQZg=;
 b=Aq/tJcKl6zT1ui6I7UcHLi7O8slKSHnIGZPI3nbmaVUmIS8v2e7ywKQiCK1T9Gldz2
 zoAEBUC+twWYJLfzhbXxMpRjwcZmSaltyZWkmpedMafGCSJ+jccX/MG+1ybW8HoI0EJn
 FnVCdJSJuiqflvfcUsOQbJMCKAF+oMd736y+P6HqKXu2YoMR/JA+I6TVeedyIYQzHFyr
 Xx+/SOGl1ZxiAUE3GDyqlf90jrmzQnkTtpU1Zuso0Dn3FMquM898z1mjJZhFVDvUweeq
 KQTjpJuiiPP2/F/RqrEadBt9oQYh42giiKoJ4Cfh4W4EDQ6yCEPLepoTlNNQvGOVEev1
 cqxQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Aq/tJcKl
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: use DSN instead of PCI
 BDF for ice_adapter index
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Mar 10, 2025 at 09:40:16AM +0100, przemyslaw.kitszel@intel.com wrote:
>> Subject: Re: [PATCH iwl-next] ice: use DSN instead of PCI BDF for ice_adapter index
>
>regarding -net vs -next, no one have complained that this bug hurts

Wait, so we are now waiting for someone to hit the bug and complain,
before we do fix? Does not make any sense to me.


>
>> > +	return (unsigned long)pci_get_dsn(pdev);
>> 
>> > How do you ensure there is no xarray index collision then you cut the number like this?
>
>The reduction occurs only on "32b" systems, which are unlikely to have
>this device. And any mixing of the upper and lower 4B part still could
>collide.

Passtrough to 32 bit qemu machine? Even how unlikely is that, you are
risking a user to hit a bug for newly introduced code without good
reason. Why?


>
>> 
>> It is also probably necessary to check if all devices supported by the driver have DSN capability enabled.
>
>I will double check on the SoC you have in mind.
>
>> 
>> Regards,
>> Sergey
>
