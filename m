Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9581A49C93
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 15:59:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55DF16FA25;
	Fri, 28 Feb 2025 14:59:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B8H3mjy9cLP0; Fri, 28 Feb 2025 14:59:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A06566064F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740754771;
	bh=SkKwIhvnfqN2r+QHSzxVSlp38AINO68uiTWQnDmFEaM=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=INzZGZ5nQ7n9dEiTkoKOE1LBpOI1q3o+6gXU8WmVMULkZai3lk8R7LtnPA1i0WNDQ
	 SWjfpwdbXNpEHG+jWgtt5CxuiggAfQTBi9iWzPo9KdClByYaxS0G9SswiylqY/3AEO
	 /VKNzkFP/QzfFiqzP3lFxOK/ETz9MRB239dZWtfrghCPMVUHLhQWNVSRh6diX0QxH9
	 1dlyc861SPMyth+SBvIYa7Cf5+h0FMnrragXs22DMh0ZXTeK2WzsRsj9Jv61oFqwTr
	 HuAzMfYCrk72T4ZXh5/3JpO4VDNACm2CnNPlGVVmgiBD1+Lx044uEyEZ3z40Cx4ZOH
	 Pj5tJ0549NuKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A06566064F;
	Fri, 28 Feb 2025 14:59:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 302A168
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 14:59:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A5D44094B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 14:59:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mTrrjIO-MIrp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 14:59:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.147;
 helo=fout-b4-smtp.messagingengine.com; envelope-from=mpearson-lenovo@squebb.ca;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F1951408CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1951408CC
Received: from fout-b4-smtp.messagingengine.com
 (fout-b4-smtp.messagingengine.com [202.12.124.147])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F1951408CC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 14:59:27 +0000 (UTC)
Received: from phl-compute-06.internal (phl-compute-06.phl.internal
 [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id 7CC3911401A1;
 Fri, 28 Feb 2025 09:59:26 -0500 (EST)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-06.internal (MEProxy); Fri, 28 Feb 2025 09:59:26 -0500
X-ME-Sender: <xms:Tc_BZyRfJVovarecw5r84IZmVCOkEtAzwaudCPx7n957vpFzvXqivA>
 <xme:Tc_BZ3z2iSoFyu7rOZ5oiwqIRzK74GsQRpfJ8kFBFJL93O9ZDDe5zaHHtk2k8iWku
 cwmzQQ9RR9vAY4BwUw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeltdeilecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
 hnthhsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtgfesthejredtredt
 tdenucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvg
 hnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnhephfeuvdehteeghedt
 hedtveehuddvjeejgffgieejvdegkefhfeelheekhedvffehnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhv
 ohesshhquhgvsggsrdgtrgdpnhgspghrtghpthhtohepuddupdhmohguvgepshhmthhpoh
 huthdprhgtphhtthhopegurghvvghmsegurghvvghmlhhofhhtrdhnvghtpdhrtghpthht
 ohepvgguuhhmrgiivghtsehgohhoghhlvgdrtghomhdprhgtphhtthhopegrnhhthhhonh
 ihrdhlrdhnghhuhigvnhesihhnthgvlhdrtghomhdprhgtphhtthhopehprhiivghmhihs
 lhgrfidrkhhithhsiigvlhesihhnthgvlhdrtghomhdprhgtphhtthhopehkuhgsrgeskh
 gvrhhnvghlrdhorhhgpdhrtghpthhtohepihhnthgvlhdqfihirhgvugdqlhgrnheslhhi
 shhtshdrohhsuhhoshhlrdhorhhgpdhrtghpthhtoheprghnughrvgifodhnvghtuggvvh
 eslhhunhhnrdgthhdprhgtphhtthhopegrnhgurhgvfieslhhunhhnrdgthhdprhgtphht
 thhopehprggsvghnihesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:Tc_BZ_2y4ckCx23_IJtJSJpM74WixsElSA9JsqF9gxnoE7Nz6sq2XA>
 <xmx:Tc_BZ-DvB2iQbtIdAdbNTYviTfRMepNlnuC5QywMZSEBire0mHM5yA>
 <xmx:Tc_BZ7gmqAu6cVv3Ovw99YRgaLlNVQW2Q4rT_1FFMzfr_NxdV__vpA>
 <xmx:Tc_BZ6po6MsSJ-Hj_N1N9AtyH3dnMYZWBa70Dpir5wb33eJHrHSOMA>
 <xmx:Ts_BZwbXxWGU-98a7GoEX06bG8wLsWjZi7oeM-MOl_g2BOX1Tf9Ju4vd>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 85C9D3C0066; Fri, 28 Feb 2025 09:59:25 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Fri, 28 Feb 2025 09:59:05 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Andrew Lunn" <andrew@lunn.ch>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-Id: <9f460418-99c6-49f9-ac2c-7a957f781e17@app.fastmail.com>
In-Reply-To: <1a4ed373-9d27-4f4b-9e75-9434b4f5cad9@lunn.ch>
References: <mpearson-lenovo@squebb.ca>
 <20250226194422.1030419-1-mpearson-lenovo@squebb.ca>
 <36ae9886-8696-4f8a-a1e4-b93a9bd47b2f@lunn.ch>
 <50d86329-98b1-4579-9cf1-d974cf7a748d@app.fastmail.com>
 <1a4ed373-9d27-4f4b-9e75-9434b4f5cad9@lunn.ch>
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1740754766;
 x=1740841166; bh=SkKwIhvnfqN2r+QHSzxVSlp38AINO68uiTWQnDmFEaM=; b=
 NUxlybClqhUUMJKEhwaSw9gahKPK/yi6cKqYkNcj/Z+SSv9EMtvrT81Z4JL7ujhl
 4AtjvgXLqUMFGCYCTNWhsz6/pJSQp2GeaI41UMV18cW2LEXgqZfEBZn8LSbsHvgC
 FjUv9D5DQtBnLxcpHyvtCzY+XIGVuSINivBhq4O1w6k50IpUFLNUGuEvnqZQ7wIT
 QPgQ6BzSG3/qvr5a/N6Vz3sY0sDVfHjHjVR4O5vYElyIGwI96Q+CFFYxOXDm4VgN
 mLGc089/E6fH5gqtzg3SZeCp/JCD0VV2Hbjt0tbvCEVeOdAXS4C8myyHFkoSvPFP
 erFxVBVBfdEG8fqxySdCyQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1740754766; x=
 1740841166; bh=SkKwIhvnfqN2r+QHSzxVSlp38AINO68uiTWQnDmFEaM=; b=D
 uTvYExHaNIlUxU7caUsluXfPuLmeoLKJSy/k2F4mwCS/aeRiFiwUcQAnfO/YRN7Q
 yAFVHY6hofkLpcP60hihjYTFciaZ1TEXUaBdPH5sVTUxdP/QPpuJGHiTxmaxw64J
 vd2IYBrSEKzeUr5sSVe3fnBi6eMnw4AT04r6qXZ/QDKUbwaMoLwqZsuqHvhApWbL
 CYHRLLqh58fllgFGiUHHfvMFQsVjbhr3hc7JhX9z1bcTyu8VUWyA5ubSM0cUgDVx
 6AxsZ0nWxooV813ipSlyU0Ai/8N2yP+XB/ftSCVZDlWJbxObPMOl+KjDKrcjvCCV
 tL792Fv0D/su1FvXqEjxw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=squebb.ca
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=squebb.ca header.i=@squebb.ca
 header.a=rsa-sha256 header.s=fm2 header.b=NUxlybCl; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=DuTvYExH
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

Hi Andrew

On Thu, Feb 27, 2025, at 11:07 AM, Andrew Lunn wrote:
>> >> +			e1e_rphy(hw, PHY_REG(772, 26), &phy_data);
>> >
>> > Please add some #define for these magic numbers, so we have some idea
>> > what PHY register you are actually reading. That in itself might help
>> > explain how the workaround actually works.
>> >
>> 
>> I don't know what this register does I'm afraid - that's Intel knowledge and has not been shared.
>
> What PHY is it? Often it is just a COTS PHY, and the datasheet might
> be available.
>
> Given your setup description, pause seems like the obvious thing to
> check. When trying to debug this, did you look at pause settings?
> Knowing what this register is might also point towards pause, or
> something totally different.
>
> 	Andrew

For the PHY - do you know a way of determining this easily? I can reach out to the platform team but that will take some time. I'm not seeing anything in the kernel logs, but if there's a recommended way of confirming that would be appreciated.

We did look at at the pause pieces - which I agree seems like an obvious candidate given the speed mismatch on the network.
Experts on the Intel networking team did reproduce the issue in their lab and looked at this for many weeks without determining root cause. I wish it was as obvious as pause control configuration :)

Thanks
Mark
