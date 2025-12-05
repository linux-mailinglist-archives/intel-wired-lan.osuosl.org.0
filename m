Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0517CA9883
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 23:44:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 136F160BC9;
	Fri,  5 Dec 2025 22:44:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V3DYsB549bHA; Fri,  5 Dec 2025 22:44:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7746A6089B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764974680;
	bh=lpEx1ambYyP5Rtm2X3yIyoxtb1u/IW39Aq3QNvu0oX0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n4oWLEn9JUow1/pF2cUlWKeRL5n30kIl7qI3IZ2PfwgRuqZoLV6RBcRwEttyqVmj3
	 GaTYKTyQ5tvw7+0N4pf/eS4VomrzFph54QBKcDncDq3ajYWqN205VKFGsHtjGXz1GN
	 lrZ+Quvog4loY7A/y0DNYDeguouj46TYwijs3fM2H4/lK5SteubgJBtN+2aG11YzcD
	 JmUixokP04WwaRxyKDTK5Q9DhVP8ruCzGzy1WALEastMM8G0+vPiLIo/qyT91cyjCR
	 kOEoniBdS+o+Ei7aWiGgN9FwWGMjsW6EBdG1vQVZ0eJPP8M2iyJ5T8JWnU8VMAVX3m
	 c5nyt6aLtTQ/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7746A6089B;
	Fri,  5 Dec 2025 22:44:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 15074E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 22:44:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 05E8B607AC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 22:44:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dl6nj8-ZFBWv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 22:44:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62c; helo=mail-pl1-x62c.google.com;
 envelope-from=jbrandeburg@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 50EFE6072A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50EFE6072A
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 50EFE6072A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 22:44:26 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-298144fb9bcso28370685ad.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 Dec 2025 14:44:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764974665; x=1765579465;
 h=content-transfer-encoding:in-reply-to:references:subject:to:from
 :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lpEx1ambYyP5Rtm2X3yIyoxtb1u/IW39Aq3QNvu0oX0=;
 b=U4u2aBa3yTIi7DlhU0IxXhjoukhsSaeM7xSWP5hKUFnnKt/9IJkVZrnHBTz2PG3lZR
 534XR5tfwYq4FKpjlforhaH/sLYBawCDaCQ8JxfMs09dl9dGGKmduZd+xELIvTdAvh1g
 MXb509J5rSc7zYXJkeY81II/98WB0dU+Tbwi78taJz2Flcu59A+KGnoZczOz2PVw5zJg
 JNLwhPBBAopiVITH4E65CYDwCIFnyiTkiUa+5l7TzObkSWFPVewIkyVJWCPs7ziyXOD/
 xh4/F34oQxz3IQoPatnwgIYaptm7mGfRiMXmSJNCP0GES5qJxFXSF3xrpDhhx/XZuD07
 20Bg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVhLAF6+8SUy6Nagbyqu4MLG4MXyN5Sds9KiHXuJ5OqBIWpnjt2Hon+y7mRBUzi4FSEfJIB1xqduGylcLgCKGE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywa54JkD1GygCqlc90gaS87Z+lQnfFdmUmk5PQCcDjUps9X4k6m
 H0Fg/Obt7Y/Uc6jsU9KE1/OLhhxMu15GFxywCEZgAt3W68EavfRB46NItrOHL4jgbiI=
X-Gm-Gg: ASbGncvm/85vkDo62uAk4Mdm/G5G10q5RvsEzmJKRZ3DSAOv9eaFoBdslQfw9Vh0LLO
 LsMxfahAMFngYmZrPLldBzpcN3h4Uq6i42ZM3Je4+kl1DqnTHdFg+eG18/TzJnUgdUgaJ7sUxZF
 dV/5joucJJ0xcYXZa8L4UkjSiXOjTEotYvAGUjCIiIs196EEQdWW3fEQ5lV2yY9jzXhav0gOQyx
 4I+gtU4tZ40E5TU8gW/rQ7ssRimc+4gQ6eFXLN8LKfyVjI9KeqR0v9JQt+tRg9u4RmqjpSYeNhG
 YduQyGsY4r/aMG4dIZmWQMk7LiU6TqQNPxoBLCFKjGUUnpUc5Hs4dT73/Yg/mLINraOdZOOExDP
 qqALxMqFrbXNO5XZrvdhMSl9WujMwSoISzRXZAzscDrObEqUtCtH3gj/zZz2PxewP7i7T5YmJSI
 lry30tjdg491i6y65NbRY6MdvS
X-Google-Smtp-Source: AGHT+IFhpI3ZHThmGhcjIO8StUj5kK4J0ohrFCCoQv50ysO8or1KHcNeUUJeASTwpDf5xm+pApbegQ==
X-Received: by 2002:a17:902:ec90:b0:297:c058:b69d with SMTP id
 d9443c01a7336-29df5e1b869mr5922005ad.34.1764974665492; 
 Fri, 05 Dec 2025 14:44:25 -0800 (PST)
Received: from [100.96.46.103] ([104.28.205.248])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29db93d244asm45943365ad.63.2025.12.05.14.44.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Dec 2025 14:44:25 -0800 (PST)
Message-ID: <a2abd596-f8fb-4c2b-9181-7c2c9f0b9936@cloudflare.com>
Date: Fri, 5 Dec 2025 14:44:23 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: jbrandeburg@cloudflare.com
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Jesse Brandeburg <jbrandeb@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 IWL <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20251201233853.15579-1-jbrandeb@kernel.org>
 <IA3PR11MB8986697A94FB36E893C7E87FE5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <d6dcd835-7564-481a-a854-25b187893e6c@cloudflare.com>
 <IA3PR11MB898654344D883B1CC06A7636E5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB898654344D883B1CC06A7636E5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1764974665; x=1765579465;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:references:subject:to:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lpEx1ambYyP5Rtm2X3yIyoxtb1u/IW39Aq3QNvu0oX0=;
 b=VaP9ekc8JqToH3P8nNAJJ5S4Awsfts9jOF41djCMzIsun7sW7nK4BA5qI0/YJe2Oji
 /rP7LE4ud6fXNcgr+JwpNJ7yFtF39a7np6MKqXZrK8oM6KW1jjRCse9ZKq/oN0QK1d1a
 ZkhxzMpnfun+LQb11EX1qVJbcAsIbp4ZtL+JRueCv939VZjs880JT4MN6J7T4DYCBLeC
 EXysflhAhefGY6XD/Adx8GqzEpCjOVKBW6a4+12NswryMLgDmYbXm96frBTmZSuo7gCb
 1WDM/414V4qa7RG3oVaevtq0i+YdzYqpeq4nLsIoKT7VPvWyEq7eBZK0TL7TOjOVWAiz
 Pxdw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=VaP9ekc8
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: stop counting UDP csum
 mismatch as rx_errors
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

On 12/5/25 12:56 PM, "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com> wrote:
> 
> 
> > -----Original Message-----
> > From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
> > Sent: Friday, December 5, 2025 8:05 PM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Jesse
> > Brandeburg <jbrandeb@kernel.org>; netdev@vger.kernel.org
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Keller, Jacob E
> > <jacob.e.keller@intel.com>; IWL <intel-wired-lan@lists.osuosl.org>;
> > Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> > <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> > Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> > Paolo Abeni <pabeni@redhat.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: stop counting UDP
> > csum mismatch as rx_errors
> >
> > On 12/5/25 12:26 AM, Loktionov, Aleksandr wrote:
> >>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> >>> b/drivers/net/ethernet/intel/ice/ice_main.c
> >>> index 86f5859e88ef..d004acfa0f36 100644
> >>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> >>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> >>> @@ -6995,7 +6995,6 @@ void ice_update_vsi_stats(struct ice_vsi
> > *vsi)
> >>>    		cur_ns->rx_errors = pf->stats.crc_errors +
> >>>    				    pf->stats.illegal_bytes +
> >>>    				    pf->stats.rx_undersize +
> >>> -				    pf->hw_csum_rx_error +
> >>
> >> Good day , Jesse
> >> It looks like you remove the single place where the '
> > hw_csum_rx_error' var is being really used.
> >> What about removing it's declaration and calculation then?
> >
> > Hi Aleks! That's not true, however, as the stat is incremented in
> > receive path and shown in ethtool -S. I think it is incredibly
> > valuable to have in the ethtool stats that the hardware is "not
> > offloading" a checksum. As well, all the other drivers in the high-
> > speed Ethernet category have a similar counter.
> >
> > I hope you'll agree it's still useful?
> 
> So, the hw_csum_rx_error still will be visible in rx_csum_bad.nic as 'private' ethtool statistics.

Correct.

> But I mean it will be not reflected in the standard "/sys/class/net/<if>/statistics".
> What do you think about it?

As the commit message said, no other drivers reflect this stat in net/interface/statistics (also there is no where to put it). I think not showing this is the whole intent of the patch. If there *was* a bad checksum it will be reflected in the kernel's checksum MIB stats, because the driver will have passed the frame to the stack anyway.

Why should this driver be different than all the other kernel drivers I mentioned in the commit message?

BR,
 Jesse
