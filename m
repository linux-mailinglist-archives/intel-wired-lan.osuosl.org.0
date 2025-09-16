Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9332CB595D6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 14:14:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3625981280;
	Tue, 16 Sep 2025 12:14:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7jFWcJCvpMk0; Tue, 16 Sep 2025 12:14:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5ABF18125F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758024847;
	bh=xF9f665i5VOqFhIxUjK1vRZHiWUJdODBvAOyo/CpsuU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6kRuBHMVx1ZFe+mwRQ8OwgiKa50jT7FJc4jJNSqCZ/BKgIk/WdDR2eKFr9xiP5ppV
	 LSIbqXh2grK0lRW2wBt8Lc4Dj939Js8Iv1FOITI6yn14iq899ZgPQmBB5NCTbXg/dl
	 4wjRbyjkqgUUIuYnOhTrt3uu0PSfc8yAibs9jDVrg9/FFekEO+5LdgQzBbDLoPr5q0
	 aqLzzTsSQqZzwYiJCfU0AdZM87CSMrIsea4JHTpxbpbtGg1Hun9zsLXZprjxl3Z6rz
	 YlZYcLdiajGmHv2Iv2Xu06mEOWHnUQBxyzntDq5P5xGKvkqTEG7wi/qAuBw3vRO/pB
	 I7jW2hFxtxXYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5ABF18125F;
	Tue, 16 Sep 2025 12:14:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 86B27199
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 12:14:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7FED08123F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 12:14:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 66JzndnduNAs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 12:14:04 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::432; helo=mail-wr1-x432.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AA74981242
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA74981242
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA74981242
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 12:14:03 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id
 ffacd0b85a97d-3eb0a50a4c3so1415884f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 05:14:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758024841; x=1758629641;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xF9f665i5VOqFhIxUjK1vRZHiWUJdODBvAOyo/CpsuU=;
 b=iHAuQVRpkUZO91HlxNZ/A2YAZhCikEOvXWmasnVikNmbk/qnOUbghlCvvyanAcKRZe
 0z3MPPRqCbCy19AK66H3uwTqCjTXu4pAlAjcAp6QWMxiBduMqPwFxrjXJAMoYHimhiFp
 DceEg/u2arC88sX9TZeD7oSUPZGUhqraC57gu+WtJ2eFm3cnBIl7gFYFpYRfvVF1Em+c
 6nHCKqwq31YMvowm5saL0gpusVDQroy+uhgZ/GIVt9KMz7DPWvXi/PCCByN670spHKAO
 VB/8dSViskxh8gERd+GpQ2btEwJULWQrqsndwRFxhxCu8PNBcNWtSXFDWR1GKZVfa/3w
 NLbQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWXVHIbTEqGPj0wxbA39xSgkLLp2OUKZtxzCNhEDNyOess0XcVpvzdoZNVh5X5iQa8mm/6tSbYlMJSTPsKf7uI=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy06fTW7gOGRlYsg0e5D6cC2E4O24JDsO2XONHDMJEA6qnz+JcW
 aeoTTC3ciqHQRmI/4/3FVFOcm0bDEto7lZuAEyGrNMw8m0d+2eLgowxxt5W4YAII0PQ=
X-Gm-Gg: ASbGncu3S2WTyDROxYKo9Ykfonu2aqSfdO8RRRea2Uk4Caky0+cMpDDydJ5h9NKkfV6
 gPSsZbZZtivUl8WW36jE1Roj8cJAcYZLgcuLl5OGojmKfu+oc6zj1XL4gFdVqGEsQq6QsJ+eXrf
 x1FYGseMlYrUFADNxBvsbxIjrIYvWIAsEkk3lgmEWgkBO61Xc/s4GeAKK9557FeZ5tcRn34M7r0
 Ank744aqYhL5ENcQ/0fB/XQnWKK7gmUKVrAHTvkKkhInAJ9kEb+V4j5OGpHPMS4SL3Z268xxuKV
 42mJ2jW0MvFDZiEe2aZBM/u6Thos2bagcJNzSTrTdfiyoaf7rdJSqUGXOx1XxyBf+P3SmOvzwx4
 wbHPsPBX0UijYEge9JYsntRPv
X-Google-Smtp-Source: AGHT+IFTV2DDOatWbyPnRVs2gISj9wRvF75+40aO26WS2GjblmHiB5pJ8t3ljkM39Gi336PDUEg+5A==
X-Received: by 2002:a05:6000:4313:b0:3e4:64b0:a779 with SMTP id
 ffacd0b85a97d-3e765a0adbcmr14740644f8f.53.1758024840702; 
 Tue, 16 Sep 2025 05:14:00 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3e8b7b6ff8fsm13681048f8f.61.2025.09.16.05.13.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Sep 2025 05:14:00 -0700 (PDT)
Date: Tue, 16 Sep 2025 14:13:50 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Ivan Vecera <ivecera@redhat.com>
Cc: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>, 
 Jakub Kicinski <kuba@kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, 
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, 
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org" <horms@kernel.org>,
 "sdf@fomichev.me" <sdf@fomichev.me>,
 "almasrymina@google.com" <almasrymina@google.com>, 
 "asml.silence@gmail.com" <asml.silence@gmail.com>,
 "leitao@debian.org" <leitao@debian.org>, 
 "kuniyu@google.com" <kuniyu@google.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 Rob Herring <robh@kernel.org>
Message-ID: <psjeuxy3ofoh544u4ag6xcfosb72bsfvfcnfzip3swprn4mzua@2owku2txa5oi>
References: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
 <20250828153157.6b0a975f@kernel.org>
 <SJ2PR11MB8452311927652BEDDAFDE8659B3AA@SJ2PR11MB8452.namprd11.prod.outlook.com>
 <20250829173414.329d8426@kernel.org>
 <SJ2PR11MB8452D62C5F94C87C6659C5989B03A@SJ2PR11MB8452.namprd11.prod.outlook.com>
 <a20848db-868c-457b-bb6b-9959922a3d56@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a20848db-868c-457b-bb6b-9959922a3d56@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1758024841; x=1758629641;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=xF9f665i5VOqFhIxUjK1vRZHiWUJdODBvAOyo/CpsuU=;
 b=uNlq7u+xgUgEeArkeIi8XsSQ2kHLouCbCMKNvD7fSMLbVAkwE5nmNrAhX0QuP4pZ3f
 hwdPhoQWHxdxj9UM11AaCMttFPV3CUeaIjhBk7+yIcgpJtFsHR6h6zMqSxCv58Duy//W
 IlBhZb72NX3jhHLgzX55/Xq6fJZJMe/phq14NynnYCZrOb8hIcHA2XQaXBZlBT/9N6Rz
 gj6LG2h+uX6LeeyQM0D6BceQSh8phQ1YWs4SbnLXibIbpV+4ZT8Zo99U77ql6Wijhkfg
 AOlyFxgPX6l5nIVxJ8Mn7roqeKVU5Qf0SLqYFlK/oPS2J0RbxQk23rITj5PLR7byoucQ
 ALew==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=uNlq7u+x
Subject: Re: [Intel-wired-lan] [RFC PATCH v2] net: add net-device TX clock
 source selection framework
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

Fri, Sep 05, 2025 at 04:09:52PM +0200, ivecera@redhat.com wrote:
>On 05. 09. 25 1:14 odp., Kubalewski, Arkadiusz wrote:
>> > From: Jakub Kicinski <kuba@kernel.org>
>> > Sent: Saturday, August 30, 2025 2:34 AM
>> > On Fri, 29 Aug 2025 07:49:46 +0000 Kubalewski, Arkadiusz wrote:
>> > > > From: Jakub Kicinski <kuba@kernel.org>
>> > > > Sent: Friday, August 29, 2025 12:32 AM
>> > > > 
>> > > > On Thu, 28 Aug 2025 18:43:45 +0200 Arkadiusz Kubalewski wrote:
>> > > > > Add support for user-space control over network device transmit clock
>> > > > > sources through a new extended netdevice netlink interface.
>> > > > > A network device may support multiple TX clock sources (OCXO, SyncE
>> > > > > reference, external reference clocks) which are critical for
>> > > > > time-sensitive networking applications and synchronization protocols.
>> > > > 
>> > > > how does this relate to the dpll pin in rtnetlink then?
>> > > 
>> > > In general it doesn't directly. However we could see indirect relation
>> > > due to possible DPLL existence in the equation.
>> > > 
>> > > The rtnetlink pin was related to feeding the dpll with the signal,
>> > > here is the other way around, by feeding the phy TX of given interface
>> > > with user selected clock source signal.
>> > > 
>> > > Previously if our E810 EEC products with DPLL, all the ports had their
>> > > phy TX fed with the clock signal generated by DPLL.
>> > > For E830 the user is able to select if the signal is provided from: the
>> > > EEC DPLL(SyncE), provided externally(ext_ref), or OCXO.
>> > > 
>> > > I assume your suggestion to extend rtnetlink instead of netdev-netlink?
>> > 
>> > Yes, for sure, but also I'm a little worried about this new API
>> > duplicating the DPLL, just being more "shallow".
>> > 
>> > What is the "synce" option for example? If I set the Tx clock to SyncE
>> > something is feeding it from another port, presumably selected by FW or
>> > some other tooling?
>> > 
>> 
>> In this particular case the "synce" source could point to a DPLL device of EEC
>> type, and there is a sense to have it together in one API. Like a two pins
>> registered with a netdev, one is input and it would be used for clock recovery,
>> second is output - for tx-clk control - either using the DPLL device produced
>> signal or not. Probably worth to mention this is the case with 'external' DPLL,
>> where ice driver doesn't control a DPLL device but it could use the output as
>> is this 'synce' one doing.
>
>Yes, this simply describes a diagram I described in my DT RFC [1] that
>defines relationship between DPLL device and network card.
>
>		   +-----------+
>		+--|   NIC 1   |<-+
>		|  +-----------+  |
>		|                 |
>		| RxCLK     TxCLK |
>		|                 |
>		|  +-----------+  |
>		+->| channel 1 |--+
>+------+	   |-- DPLL ---|
>| GNSS |---------->| channel 2 |--+
>+------+  RefCLK   +-----------+  |
>				  |
>			    TxCLK |
>				  |
>		   +-----------+  |
>		   |   NIC 2   |<-+
>		   +-----------+
>
>Here we have 2 scenarios... The first (NIC1) is a SyncE one where NIC1
>feeds some DPLL input reference with recovered clock and consumes the
>synchronized signal from the DPLL output pin as Tx clock. In the second
>(NIC2) case the NIC uses some DPLL output pin signal as Tx clock and
>the DPLL is synchronized with some external source.
>
>If I understand well your comment, the RxCLK above is the dpll_pin
>currently present in net_device. The TxCLK for the first case (NIC1)
>should be the dpll_pin you are calling as "synce" source. And TxCLK for
>the second case (NIC2) should be the dpll_pin you are calling "ext-ref".
>Is it correct?
>
>If so there should be another dpll_pin in the net_device let's call it
>tx_dpll_pin... The existing one should be some input pin of some DPLL device
>and the tx_dpll_pin should be some output pin of that device.
>
>A user could set the tx_dpll_pin by ip link command like:
>
># ip link set eth0 txclk <dpll-pin-id>

Makes sense. We have dpll to model this and connection between dpll and
netdev worlds over the pin-link (RX/source). To extend this to add the
other direction seems correct.


>
>[1] https://patchwork.kernel.org/project/netdevbpf/patch/20250815144736.1438060-1-ivecera@redhat.com/
>
>> > Similar on ext-ref, there has to be a DPLL somewhere in the path,
>> > in case reference goes away? We assume user knows what "ext-ref" means,
>> > it's not connected to any info within Linux, DPLL or PTP.
>> > 
>> 
>> Adding control over 'ext-ref' muds up the clean story of above.. The 'ext-ref'
>> source is rather an external pin, which have to be provided with external
>> clock signal, not defined anywhere else, or connected directly to DPLL device.
>> Purely HW/platform dependent. User needs to know the HW connections, the
>> signal to this pin could be produced with external signal generator, same host
>> but a different DPLL device, or simply different host and device. There can be
>> a PLL somewhere between generator and TX PHY but there is no lock status, thus
>> adding new dpll device just to model this seemed an overshot.
>> 
>> Exactly because of nature of 'ext-ref' decided to go with extending the
>> net device itself and made it separated from DPLL subsystem.
>> 
>> Please share your thoughts, right now I see two ways forward:
>> - moving netdev netlink to rt-netlink,
>> - kind of hacking into dpll subsystem with 'ext-ref' and output netdev pin.
>
>You are mentioning above the case where an external DPLL device that is
>not under control of network driver (e.g. DPLL chip on motherboard and
>some LOM NIC). In this case is currently impossible for the NIC driver
>to report dpll_pin used for recovered clock as it does not control the
>DPLL device and all dpll_devices and dpll_pins are registered by the
>different driver.
>
>There could be defined some DT schema for the relations between ethernet
>controller and used DPLL device. Then the system firmware (DT/ACPI...)
>could provide the wiring info (e.g. DPLL pin REF0P is used for recovered
>clock from NIC1 and output pin OUT4P for the Tx clock by NIC1 etc.)
>
>...and also there should be some DPLL API for the drivers that would
>allow to access DPLL devices and pins. E.g. NIC driver reads from its
>fwnode that possible tx-clock pins could be out_pin1, 3, 5 but it needs
>to translate fwnode_handles of these pins to registered DPLL pin IDs.
>
>Thanks,
>Ivan
>
