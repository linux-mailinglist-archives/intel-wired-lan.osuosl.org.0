Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 103DBA4B661
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 04:05:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7575D822EF;
	Mon,  3 Mar 2025 03:05:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gctp3dVbVKCn; Mon,  3 Mar 2025 03:05:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49B9B8222D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740971147;
	bh=iUaStrziO9Bkt9RaZInHU8giBomnwVHdGsgmyVuTGy4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qrZO+L5M6ILNk0SEw50xqLmh5m2Etk/9toJA1vzsWCi3dinISsBBslkUnidZCv7Dr
	 jSqdkT2WyhTtboQjnt+APxiGVJafEDY52YB4oMU/FX5dkK7MsoF5ODRtBMfkytPDsC
	 tfdQAAAs9LwIT4c0sU+n2QeSWQsHC57sLLIjCVeYIWU4DUvKGIwHRrmNA4uR7GM+AK
	 9lhHbct9h0EnXZfnSBuOuTcV/eTNBJNZDi1HWTeKReum1z24LKnfGC280m7ggKpOoM
	 jeoEBhW5BYEFrCCWj2PLKCkcKIDp9KaiYanEg9LhSXlCDGyQ0S6tROI3TRaJXSXZPP
	 5oiRHKsCMOR8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49B9B8222D;
	Mon,  3 Mar 2025 03:05:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0DA71D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 03:05:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 065AA40146
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 03:05:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 47PVCgboV_48 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 03:05:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.168.172.148;
 helo=fout-a5-smtp.messagingengine.com; envelope-from=mpearson-lenovo@squebb.ca;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 096BC400C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 096BC400C0
Received: from fout-a5-smtp.messagingengine.com
 (fout-a5-smtp.messagingengine.com [103.168.172.148])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 096BC400C0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 03:05:42 +0000 (UTC)
Received: from phl-compute-06.internal (phl-compute-06.phl.internal
 [10.202.2.46])
 by mailfout.phl.internal (Postfix) with ESMTP id BE9AD138113D;
 Sun,  2 Mar 2025 22:05:41 -0500 (EST)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-06.internal (MEProxy); Sun, 02 Mar 2025 22:05:41 -0500
X-ME-Sender: <xms:hBzFZya1IC7GI1oIIUbIj4CQ0WZWu8Rb_0Au3fF_Ab9AbPBkEqNbFQ>
 <xme:hBzFZ1Zhq0Hjex1eqdsuN-ltd9hLYq1HFi6fOBHTJh_Zk9dE1L8pkqn62D_jloEtZ
 eheD6nNCNOkdY80IOE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeljeellecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
 hnthhsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtgfesthhqredtredt
 jeenucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvg
 hnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnhepudeltdevfedufeff
 gfeggeehtdeigefghedugefhleetvdfggffghfehhfefteffnecuffhomhgrihhnpehinh
 htvghlrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
 rhhomhepmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrgdpnhgspghrtg
 hpthhtohepuddvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegurghvvghmsegu
 rghvvghmlhhofhhtrdhnvghtpdhrtghpthhtohepvgguuhhmrgiivghtsehgohhoghhlvg
 drtghomhdprhgtphhtthhopegrnhhthhhonhihrdhlrdhnghhuhigvnhesihhnthgvlhdr
 tghomhdprhgtphhtthhopehprhiivghmhihslhgrfidrkhhithhsiigvlhesihhnthgvlh
 drtghomhdprhgtphhtthhopehvihhtrghlhidrlhhifhhshhhithhssehinhhtvghlrdgt
 ohhmpdhrtghpthhtohepkhhusggrsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehinh
 htvghlqdifihhrvgguqdhlrghnsehlihhsthhsrdhoshhuohhslhdrohhrghdprhgtphht
 thhopegrnhgurhgvfidonhgvthguvghvsehluhhnnhdrtghhpdhrtghpthhtoheprghnug
 hrvgifsehluhhnnhdrtghh
X-ME-Proxy: <xmx:hBzFZ88NFDZBWj76Oz6PqUJwF10clnDNsclilRcBK01_CVPaM9leDQ>
 <xmx:hBzFZ0pHqYwliC_V37pK5Ys8ihlExHkz492fKmikX9kdoa6ZF-AQqQ>
 <xmx:hBzFZ9qamxoTSD59lADvDGks-Sre8xZ1_almfZBUzhu3UTenzYsu3w>
 <xmx:hBzFZyRnP28z2UYIDf-TGicFjmbhMxC0HQ1Bb0AnI3ulrTYou31xHA>
 <xmx:hRzFZ-SKzTgnPwX1jlokv590cXxLhK1yVBmH6hQyuZLqlBKcDlOFUCYH>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 7D0FE3C0066; Sun,  2 Mar 2025 22:05:40 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Sun, 02 Mar 2025 22:05:19 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Vitaly Lifshits" <vitaly.lifshits@intel.com>,
 "Andrew Lunn" <andrew@lunn.ch>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-Id: <77d8cbfa-93a2-4d49-b061-b8c59b767241@app.fastmail.com>
In-Reply-To: <4b5b0f52-7ed8-7eef-2467-fa59ca5de937@intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250226194422.1030419-1-mpearson-lenovo@squebb.ca>
 <36ae9886-8696-4f8a-a1e4-b93a9bd47b2f@lunn.ch>
 <50d86329-98b1-4579-9cf1-d974cf7a748d@app.fastmail.com>
 <1a4ed373-9d27-4f4b-9e75-9434b4f5cad9@lunn.ch>
 <9f460418-99c6-49f9-ac2c-7a957f781e17@app.fastmail.com>
 <4b5b0f52-7ed8-7eef-2467-fa59ca5de937@intel.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1740971141;
 x=1741057541; bh=iUaStrziO9Bkt9RaZInHU8giBomnwVHdGsgmyVuTGy4=; b=
 YV5qZcu3irfgq8ZdXuOVHoFboZR8iHfpQsDy5VrpN+QC/AP29daKaddGESccJcB9
 LxjS9pditf8rWwGYnSdkuTkDLwv8uhc7AoM1+mcHERq1rNJT0/Y3O7TeyXCb8va9
 JlpYHGUGw7WKabnr8ooYLsfeF4hqXJ7UPhcQe1TEATOU0sy5Jugw04gjty7h7Noy
 aEYsR8Xg8CV3Eqcbdf3XD1zqqPUFwapM6AKm9de6VTIgPfwLvL8BRMYGlgIh37jO
 NdnYr7Vk1apsvXWKtYN1TAP1vhw/RX3PxDzhKDluTFmIcZF20HaQjdPR+LISYDVI
 cerALL0FZa/qTloeOfMu4g==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1740971141; x=
 1741057541; bh=iUaStrziO9Bkt9RaZInHU8giBomnwVHdGsgmyVuTGy4=; b=A
 YxtOy6f8WNfNbW+dkggvmYJgWjavTXQe9wfcTy4LaqklMpNfI6CAB4hWRmDZhRdz
 dc3R3v0V81gGrgVuAcBq6c0lbvBSF+Xz0Y5EV//6m27TTnetUhbaDCBnD+axVg03
 apfKHlrXUKn1YFpADYmQBwxIC9C5dWXhm1DrA+CpDKgHYI7rPB42AQqPCsy2g6ip
 ixelY7rWRqoPK+DBy5klc1Fpw7t0/45GDpNMTGPU5owKZz7G1rEa7STrNobARncZ
 X2OpGpDTsTX5+EZHQMoPsjxXENXBuNTXXBH6ZYJS0i4Y/BgShhOy+UlJDlnJqLOh
 uwg0XcvGXDbasJ9Tcvl4A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=squebb.ca
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=squebb.ca header.i=@squebb.ca
 header.a=rsa-sha256 header.s=fm2 header.b=YV5qZcu3; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=AYxtOy6f
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Link flap workaround option
 for false IRP events
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

Hi Vitaly,

On Sun, Mar 2, 2025, at 8:09 AM, Lifshits, Vitaly wrote:
> Hi Mark,
>
>> Hi Andrew
>>=20
>> On Thu, Feb 27, 2025, at 11:07 AM, Andrew Lunn wrote:
>>>>>> +			e1e_rphy(hw, PHY_REG(772, 26), &phy_data);
>>>>>
>>>>> Please add some #define for these magic numbers, so we have some i=
dea
>>>>> what PHY register you are actually reading. That in itself might h=
elp
>>>>> explain how the workaround actually works.
>>>>>
>>>>
>>>> I don't know what this register does I'm afraid - that's Intel know=
ledge and has not been shared.
>>>
>>> What PHY is it? Often it is just a COTS PHY, and the datasheet might
>>> be available.
>>>
>>> Given your setup description, pause seems like the obvious thing to
>>> check. When trying to debug this, did you look at pause settings?
>>> Knowing what this register is might also point towards pause, or
>>> something totally different.
>>>
>>> 	Andrew
>>=20
>> For the PHY - do you know a way of determining this easily? I can rea=
ch out to the platform team but that will take some time. I'm not seeing=
 anything in the kernel logs, but if there's a recommended way of confir=
ming that would be appreciated.
>
> The PHY is I219 PHY.
> The datasheet is indeed accessible to the public:=20
> https://cdrdv2-public.intel.com/612523/ethernet-connection-i219-datash=
eet.pdf
>
>>=20
>> We did look at at the pause pieces - which I agree seems like an obvi=
ous candidate given the speed mismatch on the network.
>> Experts on the Intel networking team did reproduce the issue in their=
 lab and looked at this for many weeks without determining root cause. I=
 wish it was as obvious as pause control configuration :)
>>=20
>> Thanks
>> Mark
>>=20
>
> Reading this register was suggested for debug purposes to understand i=
f=20
> there is some misconfiguration. We did not find any misconfiguration.
> The issue as we discovered was a link status change interrupt caused t=
he=20
> CSME to reset the adapter causing the link flap.
>
> We were unable to determine what causes the link status change interru=
pt=20
> in the first place. As stated in the comment, it was only ever observe=
d=20
> on Lenovo P5/P7systems and we couldn't ever reproduce on other systems=
.=20
> The reproduction in our lab was on a P5 system as well.
>
>
> Regarding the suggested workaround, there isn=E2=80=99t a clear unders=
tanding=20
> why it works. We suspect that reading a PHY register is probably=20
> prevents the CSME from resetting the PHY when it handles the LSC=20
> interrupt it gets. However, it can also be a matter of slight timing=20
> variations.
> We communicated that this solution is not likely to be accepted to the=20
> kernel as is, and the initial responses on the mailing list demonstrat=
e=20
> the pushback. We do understand the frustration of end-users that may=20
> experience the problem. A couple of suggestions that can make it look=20
> less =E2=80=9Cout-of-the-blue=E2=80=9D are: try a short delay instead =
of the register=20
> read, or read a more common register like PHY STATUS instead.
> On a different topic, I suggest removing the part of the comment below:
> * Intel unable to determine root cause.

Thank you for the details.

I agree that the Intel networking team communicated to us that the solut=
ion provided to us was not suitable for upstream (just adding in the rea=
d directly) - I agreed with that and add the part about it being a modul=
e option to make it, hopefully, more palatable.
=20
The problem is that Intel have stated to us, in writing, that they would=
 not investigate further and would not work on an upstream appropriate s=
olution (a requirement for us - out of tree patches are not suitable as =
I'm sure we all agree).
=20
I'm not going to go into the internal communication details/escalations/=
etc here - but this is the only reason I'm doing this patch. I would muc=
h rather Intel had continued the debug exercise.

> The issue went through joint debug by Intel and Lenovo, and no obvious=20
> spec violations by either party were found. There doesn=E2=80=99t seem=
 to be=20
> value in including this information in the comments of upstream code.

I'm OK to remove that statement, but I do want to highlight that it is f=
actually correct.
My intent with this patch was not to dump on Intel or cause offence, but=
 to provide context as to why a Lenovo employee is doing a somewhat pecu=
liar workaround for an Intel networking device :)

I was planning on updating the commit message so I will look to make it =
less inflammatory.

Thanks for chiming in and providing the details. I'm treading very caref=
ully in what is an extremely awkward position to be put.=20

Mark
