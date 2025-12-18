Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DAACC9E23
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 01:29:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 608F540735;
	Thu, 18 Dec 2025 00:29:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X-bw4oTxIdgc; Thu, 18 Dec 2025 00:29:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3BD3407A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766017773;
	bh=C/XFjxiHoDiapv3Kf9AQyXpz8iHUXFlH3+G4KBEH7O8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NQPSJZegr2xmZo80OlMt+VBGXO9xfoey/PjFrPBKdaBRUTi+BZeztAtnzJExF45zg
	 JORHHanq736zxDHYWtImtoPo8i5mn6jDAzPVpX1aN4Bm6lve8qLQW1uOqfqDw3aNPo
	 Ryrsq+H2EyNRi1KsqGmoJZU3PJr7EJJyBIA+yBJA4ix5cEn3HYTbK8NvB9xjWd50Xa
	 TEurgBV+fl1yY9cW3TGs37fcfJ4gmcP1WVuwSwRHDaw09MuCV+iIEfG7TiWA8pjZ+B
	 b48gjJVE9WdvUKO6NTujRvuhtj2YBX4tnmxwBcR1Oe9JsvLW4JdH/CvvC1MDJn2iG2
	 9GLym40VqRRPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3BD3407A6;
	Thu, 18 Dec 2025 00:29:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 34DDF361
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 00:29:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1BC1F4018D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 00:29:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lH-I0bOl1txe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 00:29:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b132; helo=mail-yx1-xb132.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5795E400F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5795E400F3
Received: from mail-yx1-xb132.google.com (mail-yx1-xb132.google.com
 [IPv6:2607:f8b0:4864:20::b132])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5795E400F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 00:29:31 +0000 (UTC)
Received: by mail-yx1-xb132.google.com with SMTP id
 956f58d0204a3-64467071f9fso64416d50.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 16:29:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766017770; x=1766622570;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=C/XFjxiHoDiapv3Kf9AQyXpz8iHUXFlH3+G4KBEH7O8=;
 b=k+gD/4ea4+wEWJNwrj4LxGO88z/eEU4SDEra/bQV6jZOEdMHb92CjXxl491CjxUfex
 qhCTLhKKEaeyBz7eWDbAMKKVgLb0lG3UrEy79KvITdBNyyRVRF3xPLEx1PP+fmQeeovL
 7egkjpvGIqdYOMV7k95IGx741Ff7/D2wVkpI4wYaRKHGpKwZWmArYcq4/NddmejDhZXs
 gv/92CqYaq2182otAuWerU0/I4ZpEbcx9HEyX49dTXVvayPCUcvcUQacKXssDflgWhtQ
 GyV1/KMyS2rrmU4atlgPu1vVqAqcxmVmQkWMbvmBVhkUNU4SKnfNjSOVtaJB33ZhH7kZ
 D8BQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU2as/gms1l5I6+aWcMfUyeYhwdjQSOzRpawjMyBUIAiqf7y9A5+FxhZGnKRwwSnTvWGE+WhkcEpqzOUvTGBUM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwBPiK4apKUDohTAN55M5PJi3yzxZHm7fMSRXn9NquQnf/Upg7K
 b+8n6mx8r4n7LVy2oo4CXHTRMY8GZWAHwU8M1io1thbeEGfVzHdX3A8X
X-Gm-Gg: AY/fxX61pQxYNdqS4Y3Rz1aJuqoQ078eVLa8GpQE5kB3sc26Cq8U8LP1+hS9eFxETbb
 9Gy5ybQj1PNnuwJhcU0wjQ7GQlEwaAtZzVreLOHHELNXL5tW4tl1difGeVdhLMq5TLSukAxjwpW
 Y0c6JJeRIUzdAv8bdP+T6laPzmCpy+/c+cyOh+F/5xb1YuIWmOr93iZXYAmw9mmVe4ZxvVnZJci
 PRDpD6G1lWGxBr+g1CONBlJJWOR1EXvMMvTyCiYHwLMfvmCDU1ZS8KCNN0ZRAYTKyPZQay79Wbe
 uyZsblVNEBmi69pOzBK2dHsZQ55v4hFD2CRv7my4kGV4bbcO0VtKs5JNooUiY/t4GcO7zvbnqIf
 Y3Jg0ky0OTLOxJQGmeM1E2U+VClrogPYUamDCKHWD20ksFtvdfqNCSiESrk6DWHxKjTvmtkTJag
 DGyTIs2jc=
X-Google-Smtp-Source: AGHT+IGaUOcONjtuMEsZ2PhCFhxICtR6n484WKwClXmFzzDNH3PajQrXjnW44s3ibrmjEhfM0lwLvw==
X-Received: by 2002:a05:690e:400f:b0:644:60d9:753a with SMTP id
 956f58d0204a3-64555680921mr14798317d50.96.1766017769991; 
 Wed, 17 Dec 2025 16:29:29 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:52c0:aec0:bf15:a891])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78fa7289a29sm2595537b3.44.2025.12.17.16.29.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Dec 2025 16:29:29 -0800 (PST)
Date: Wed, 17 Dec 2025 19:29:29 -0500
From: Yury Norov <yury.norov@gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-ID: <aUNK6So7KzD3zngt@yury>
References: <20251216002852.334561-1-yury.norov@gmail.com>
 <IA3PR11MB89865FF35893188BDF61B7FAE5ABA@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA3PR11MB89865FF35893188BDF61B7FAE5ABA@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766017770; x=1766622570; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=C/XFjxiHoDiapv3Kf9AQyXpz8iHUXFlH3+G4KBEH7O8=;
 b=bAh+pkJogjTV6a1aZWpfDa4hB0EbQVOaUZAVqGyPDT9vh7RouYah1IvQO0dwj3dP2+
 h5P+bPbT5TcVp7VyxLdL+g+PKMsuIxqRf9pw4ev2pV5JWOZsMk/c5ipGflpK7cJhSUXw
 k3DL3PrJ/6dO7mzZ95BXnbC1/9BJXrgI3rQAgedJy8lfC5ey5Rpuy3xHvaZoaLFEwVna
 KzUQId2A4rNY1X7EcUVAKHJ4NLl7Q7DGS6GdICFbuHNs+KggoMvmvBKDTp271CXbBhA6
 AiV+5aFfGdYpxmz/w6NEIQOcW9R22Gt7aQ1wR443gBZ3Es9ms7L+TmSw+z/NyCkP9TtO
 HalA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=bAh+pkJo
Subject: Re: [Intel-wired-lan] [PATCH] i40e: drop useless bitmap_weight()
 call in i40e_set_rxfh_fields()
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

On Wed, Dec 17, 2025 at 11:37:32AM +0000, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Yury Norov (NVIDIA)
> > Sent: Tuesday, December 16, 2025 1:29 AM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> > <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> > Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> > Abeni <pabeni@redhat.com>; intel-wired-lan@lists.osuosl.org;
> > netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> > Cc: Yury Norov (NVIDIA) <yury.norov@gmail.com>
> > Subject: [Intel-wired-lan] [PATCH] i40e: drop useless bitmap_weight()
> > call in i40e_set_rxfh_fields()
> > 
> > bitmap_weight() is O(N) and useless here, because the following
> > for_each_set_bit() returns immediately in case of empty flow_pctypes.
> > 
> > Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
> > ---
> >  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 24 ++++++++----------
> > -
> >  1 file changed, 10 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > index f2c2646ea298..54b0348fdee3 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > @@ -3720,20 +3720,16 @@ static int i40e_set_rxfh_fields(struct
> > net_device *netdev,
> >  		return -EINVAL;
> >  	}
> > 
> > -	if (bitmap_weight(flow_pctypes, FLOW_PCTYPES_SIZE)) {
> > -		u8 flow_id;
> > -
> > -		for_each_set_bit(flow_id, flow_pctypes,
> > FLOW_PCTYPES_SIZE) {
> > -			i_setc = (u64)i40e_read_rx_ctl(hw,
> > I40E_GLQF_HASH_INSET(0, flow_id)) |
> > -				 ((u64)i40e_read_rx_ctl(hw,
> > I40E_GLQF_HASH_INSET(1, flow_id)) << 32);
> > -			i_set = i40e_get_rss_hash_bits(&pf->hw, nfc,
> > i_setc);
> > -
> > -			i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(0,
> > flow_id),
> > -					  (u32)i_set);
> > -			i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(1,
> > flow_id),
> > -					  (u32)(i_set >> 32));
> > -			hena |= BIT_ULL(flow_id);
> > -		}
> > +	for_each_set_bit(flow_id, flow_pctypes, FLOW_PCTYPES_SIZE) {
> You removed the flow_id declaration, but use it in the code below.
> Are you sure it compiles?

No it doesn't. I'll send the right version shortly. Sorry for this
noise.

Thanks,
Yury
