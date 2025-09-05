Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1E8B45A1B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 16:10:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1534D40A64;
	Fri,  5 Sep 2025 14:10:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2FXBL264MWUT; Fri,  5 Sep 2025 14:10:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4A4F40C3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757081410;
	bh=I9agXDmmt+rDOvtmYXnC1tlNDnxlDBxkLIzMrNozdak=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OgyhBkc3l34BnzR9jAOkeXMhCYmJv4vC7JLlMaSH+rLVau4fUEvyDgvKUsxSBgKfs
	 3YS4gnnWGZgyZyWciyA9NptIUANa/bhyHam6eEssTZ7KO1Fq5Hslf1uc7zA9yHlAIH
	 fUySRn9AbsPwRJKvr1lPoCjBhOtg9rtpNXXZJCS10oUsylEa9vDinOdeztyxRLgPAg
	 T05UPZH3sMJfvhONdbsUotIgd2nd30+rMj1OAgaNbxSd+fjB1Zix1YYL8CLoTFlFm1
	 QN84Q73ERKXQjUOsWkVJSoG8TL3GakRTg/u37lLaVikUrh0eHfBWtc9Cya295Yl8r9
	 cvFxpQ06jNVgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4A4F40C3D;
	Fri,  5 Sep 2025 14:10:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8210B967
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 14:10:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 73CB860F3F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 14:10:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7lVCnvz_FSo7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 14:10:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 74F4760F68
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74F4760F68
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 74F4760F68
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 14:10:07 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-265-16EdKIicMsi_MbH3U_V_Eg-1; Fri,
 05 Sep 2025 10:10:03 -0400
X-MC-Unique: 16EdKIicMsi_MbH3U_V_Eg-1
X-Mimecast-MFC-AGG-ID: 16EdKIicMsi_MbH3U_V_Eg_1757081401
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id B8C9818004D8; Fri,  5 Sep 2025 14:10:00 +0000 (UTC)
Received: from [10.45.224.74] (unknown [10.45.224.74])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 605CD180044F; Fri,  5 Sep 2025 14:09:53 +0000 (UTC)
Message-ID: <a20848db-868c-457b-bb6b-9959922a3d56@redhat.com>
Date: Fri, 5 Sep 2025 16:09:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "sdf@fomichev.me" <sdf@fomichev.me>,
 "almasrymina@google.com" <almasrymina@google.com>,
 "asml.silence@gmail.com" <asml.silence@gmail.com>,
 "leitao@debian.org" <leitao@debian.org>,
 "kuniyu@google.com" <kuniyu@google.com>, "jiri@resnulli.us"
 <jiri@resnulli.us>, "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Rob Herring <robh@kernel.org>
References: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
 <20250828153157.6b0a975f@kernel.org>
 <SJ2PR11MB8452311927652BEDDAFDE8659B3AA@SJ2PR11MB8452.namprd11.prod.outlook.com>
 <20250829173414.329d8426@kernel.org>
 <SJ2PR11MB8452D62C5F94C87C6659C5989B03A@SJ2PR11MB8452.namprd11.prod.outlook.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <SJ2PR11MB8452D62C5F94C87C6659C5989B03A@SJ2PR11MB8452.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1757081407;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=I9agXDmmt+rDOvtmYXnC1tlNDnxlDBxkLIzMrNozdak=;
 b=ELySg95ZEOlW/qcl1klXm5aZe4lxa3KHlNCKCNszB1U42vH7bkiT6bNBRnCMka2intZENd
 JdmA9w7QuycOLTKsnDndrnU75WcdF91x7LWTl2E2HZOgu9yh+EV8XFlX+/3MpbbHjPuEiL
 8wGmO8AMISIs8KAciMPKiBQgjsg7YqQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ELySg95Z
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

On 05. 09. 25 1:14 odp., Kubalewski, Arkadiusz wrote:
>> From: Jakub Kicinski <kuba@kernel.org>
>> Sent: Saturday, August 30, 2025 2:34 AM
>> On Fri, 29 Aug 2025 07:49:46 +0000 Kubalewski, Arkadiusz wrote:
>>>> From: Jakub Kicinski <kuba@kernel.org>
>>>> Sent: Friday, August 29, 2025 12:32 AM
>>>>
>>>> On Thu, 28 Aug 2025 18:43:45 +0200 Arkadiusz Kubalewski wrote:
>>>>> Add support for user-space control over network device transmit clock
>>>>> sources through a new extended netdevice netlink interface.
>>>>> A network device may support multiple TX clock sources (OCXO, SyncE
>>>>> reference, external reference clocks) which are critical for
>>>>> time-sensitive networking applications and synchronization protocols.
>>>>
>>>> how does this relate to the dpll pin in rtnetlink then?
>>>
>>> In general it doesn't directly. However we could see indirect relation
>>> due to possible DPLL existence in the equation.
>>>
>>> The rtnetlink pin was related to feeding the dpll with the signal,
>>> here is the other way around, by feeding the phy TX of given interface
>>> with user selected clock source signal.
>>>
>>> Previously if our E810 EEC products with DPLL, all the ports had their
>>> phy TX fed with the clock signal generated by DPLL.
>>> For E830 the user is able to select if the signal is provided from: the
>>> EEC DPLL(SyncE), provided externally(ext_ref), or OCXO.
>>>
>>> I assume your suggestion to extend rtnetlink instead of netdev-netlink?
>>
>> Yes, for sure, but also I'm a little worried about this new API
>> duplicating the DPLL, just being more "shallow".
>>
>> What is the "synce" option for example? If I set the Tx clock to SyncE
>> something is feeding it from another port, presumably selected by FW or
>> some other tooling?
>>
> 
> In this particular case the "synce" source could point to a DPLL device of EEC
> type, and there is a sense to have it together in one API. Like a two pins
> registered with a netdev, one is input and it would be used for clock recovery,
> second is output - for tx-clk control - either using the DPLL device produced
> signal or not. Probably worth to mention this is the case with 'external' DPLL,
> where ice driver doesn't control a DPLL device but it could use the output as
> is this 'synce' one doing.

Yes, this simply describes a diagram I described in my DT RFC [1] that
defines relationship between DPLL device and network card.

		   +-----------+
		+--|   NIC 1   |<-+
		|  +-----------+  |
		|                 |
		| RxCLK     TxCLK |
		|                 |
		|  +-----------+  |
		+->| channel 1 |--+
+------+	   |-- DPLL ---|
| GNSS |---------->| channel 2 |--+
+------+  RefCLK   +-----------+  |
				  |
			    TxCLK |
				  |
		   +-----------+  |
		   |   NIC 2   |<-+
		   +-----------+

Here we have 2 scenarios... The first (NIC1) is a SyncE one where NIC1
feeds some DPLL input reference with recovered clock and consumes the
synchronized signal from the DPLL output pin as Tx clock. In the second
(NIC2) case the NIC uses some DPLL output pin signal as Tx clock and
the DPLL is synchronized with some external source.

If I understand well your comment, the RxCLK above is the dpll_pin
currently present in net_device. The TxCLK for the first case (NIC1)
should be the dpll_pin you are calling as "synce" source. And TxCLK for
the second case (NIC2) should be the dpll_pin you are calling "ext-ref".
Is it correct?

If so there should be another dpll_pin in the net_device let's call it
tx_dpll_pin... The existing one should be some input pin of some DPLL 
device and the tx_dpll_pin should be some output pin of that device.

A user could set the tx_dpll_pin by ip link command like:

# ip link set eth0 txclk <dpll-pin-id>

[1] 
https://patchwork.kernel.org/project/netdevbpf/patch/20250815144736.1438060-1-ivecera@redhat.com/

>> Similar on ext-ref, there has to be a DPLL somewhere in the path,
>> in case reference goes away? We assume user knows what "ext-ref" means,
>> it's not connected to any info within Linux, DPLL or PTP.
>>
> 
> Adding control over 'ext-ref' muds up the clean story of above.. The 'ext-ref'
> source is rather an external pin, which have to be provided with external
> clock signal, not defined anywhere else, or connected directly to DPLL device.
> Purely HW/platform dependent. User needs to know the HW connections, the
> signal to this pin could be produced with external signal generator, same host
> but a different DPLL device, or simply different host and device. There can be
> a PLL somewhere between generator and TX PHY but there is no lock status, thus
> adding new dpll device just to model this seemed an overshot.
> 
> Exactly because of nature of 'ext-ref' decided to go with extending the
> net device itself and made it separated from DPLL subsystem.
> 
> Please share your thoughts, right now I see two ways forward:
> - moving netdev netlink to rt-netlink,
> - kind of hacking into dpll subsystem with 'ext-ref' and output netdev pin.

You are mentioning above the case where an external DPLL device that is
not under control of network driver (e.g. DPLL chip on motherboard and
some LOM NIC). In this case is currently impossible for the NIC driver
to report dpll_pin used for recovered clock as it does not control the
DPLL device and all dpll_devices and dpll_pins are registered by the
different driver.

There could be defined some DT schema for the relations between ethernet
controller and used DPLL device. Then the system firmware (DT/ACPI...)
could provide the wiring info (e.g. DPLL pin REF0P is used for recovered
clock from NIC1 and output pin OUT4P for the Tx clock by NIC1 etc.)

...and also there should be some DPLL API for the drivers that would
allow to access DPLL devices and pins. E.g. NIC driver reads from its
fwnode that possible tx-clock pins could be out_pin1, 3, 5 but it needs
to translate fwnode_handles of these pins to registered DPLL pin IDs.

Thanks,
Ivan

