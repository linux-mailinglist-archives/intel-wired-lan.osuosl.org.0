Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBtJEhubnWnwQgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 13:35:39 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0707C187055
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 13:35:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16D9D60C13;
	Tue, 24 Feb 2026 12:35:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PC37Y6O9jmnD; Tue, 24 Feb 2026 12:35:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32FD060C08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771936534;
	bh=9ObHeEm5ylGUNL9nu4VHSvr84vjV3LyP5MbCo7uF1KM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hPHL3iruXMB6ChSceCeIYCAYis7Ze3Rw6cT0/ftMoDp7cRDfpzCgdMQnrEBEiI9xQ
	 4ewg0s4/07YBjrABxmM9osfCw3hxPCjRX+8x6/H8wGczUrxL3YMXWpYrxNgAAlGnW6
	 fXfTasqSEHfguDlpS6ygSLDnAOxUOhbxl7FnExM/RlTFjXxtT1fsNtNxgTAeaa0fLz
	 kA/0/RbUPZ8x+C5/LTTPuWC9CMVqkp2ikuhtzJGM58l8op2oWpWRYvHsn9o1B9EQBF
	 O1mkseBBCsI75raMiYgvt9xfpxDgSn+4xIfDVwCVSr1sUnsfkrikBaCGdx2my65XiX
	 NXPPZSmS81YGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32FD060C08;
	Tue, 24 Feb 2026 12:35:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E9F86237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 12:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB49D82864
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 12:35:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AsO4qB1expqQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 12:35:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.146;
 helo=fout-b3-smtp.messagingengine.com;
 envelope-from=marmarek@invisiblethingslab.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C9545827CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9545827CE
Received: from fout-b3-smtp.messagingengine.com
 (fout-b3-smtp.messagingengine.com [202.12.124.146])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9545827CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 12:35:29 +0000 (UTC)
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.stl.internal (Postfix) with ESMTP id CC6361D000CB;
 Tue, 24 Feb 2026 07:35:28 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Tue, 24 Feb 2026 07:35:28 -0500
X-ME-Sender: <xms:EJudaQSt0xQ7jILxO6-S-YP40vLUElpR6s9vKzmgmou1iHCoAV-DAg>
 <xme:EJudaTzi1dsBxM9OH3Rv-zFQTI0WIJcY-yXEMoTTRmw0Y8ihNxCY248i2PWd0_GrB
 afSD-tkbZ4uTm4RLTKJ698YAfhUfeIb0QW3Ir54znU_oQLGKA>
X-ME-Received: <xmr:EJudabcx7I7MXmSLUMozjSlDgEagBJiE9u2fu6g-p0tv5YgZJztuL1tuvIAfDXbGMWvlVMnzHtXC74omi3PBa3cSUqIqphKq-f0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvgedtudejucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepfffhvfevuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrrhgvkhcu
 ofgrrhgtiiihkhhofihskhhiqdfikphrvggtkhhiuceomhgrrhhmrghrvghksehinhhvih
 hsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnhepueekteet
 gefggfekudehteegieeljeejieeihfejgeevhfetgffgteeuteetueetnecuffhomhgrih
 hnpehgihhthhhusgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
 mhgrihhlfhhrohhmpehmrghrmhgrrhgvkhesihhnvhhishhisghlvghthhhinhhgshhlrg
 gsrdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphht
 thhopeguihhmrgdrrhhuihhnshhkihihsehinhhtvghlrdgtohhmpdhrtghpthhtohepih
 hnthgvlhdqfihirhgvugdqlhgrnheslhhishhtshdrohhsuhhoshhlrdhorhhg
X-ME-Proxy: <xmx:EJudafLdyb3qX2a9TiEIUO-vVEjXNoUeYUMIXwtl7RxkxJydb4ZMtw>
 <xmx:EJudacFpOY0TWEn6XLjkqVJBoBMbvjGJxE0UerRLuIdIl7IxiX1s0g>
 <xmx:EJudaZpY-S-ZbOejuU0YtbMPKFa1BeFu6f7QwykxlOCvTtjms6OkWQ>
 <xmx:EJudaVTIUYh5tvaHXcTWpPPrnXEFOoh5HKBihgxV6US2E69f7ws-2w>
 <xmx:EJudaevm1dkQeMPyMkC1WzaglZa_uXO6Gm9TCLvBTipGRK-mLlycRcMo>
Feedback-ID: i1568416f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 24 Feb 2026 07:35:27 -0500 (EST)
Date: Tue, 24 Feb 2026 13:35:24 +0100
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Message-ID: <aZ2bDRpx1SuiwitX@mail-itl>
References: <aZxzShjYvQwloZZ_@mail-itl>
 <99f696b8-75ef-43bb-8220-6073ae90aea4@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="E+recVOcoXYWXhW2"
Content-Disposition: inline
In-Reply-To: <99f696b8-75ef-43bb-8220-6073ae90aea4@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 invisiblethingslab.com; h=cc:cc:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1771936528;
 x=1772022928; bh=9ObHeEm5ylGUNL9nu4VHSvr84vjV3LyP5MbCo7uF1KM=; b=
 c6y+PVD36tiPtWL0sSqXSdvrIjA8F1E5sgmc7v4O7NFx8rDegyHF5P4hTrsCSHO4
 Laxig1gn7zm8bVrkU4gddtt7gW99Sf3AueCGGOg4AkxgGBI8OdDsK3hMjZpynn77
 a0qjmv2BmLQ0x7oLkLj2RniZGR82caLlpPmTLBJMec5lnhB5M1Rl4WvFhviuaKjg
 oL57pCF2K5zB7qxb9VzU662DXpLpjtoXtZyBNqsLAOuCx8W1iHTjoRofmbztuzW6
 ib//NQGIqNprIyEtTBNFQrwbN/KvfjPMFN0d590w/0a+Z14V+I8a+j4QKwN6qzQI
 ttEjWbAs/mA2YQnMKNOCSw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1771936528; x=1772022928; bh=9ObHeEm5ylGUNL9nu4VHSvr84vjV3LyP5Mb
 Co7uF1KM=; b=N3j7fPB3aqajIQ9Q8xup2rk4Ewj/+wJIknkTX9H2EjV1hLtFKCD
 n4/bae/8V83+RfyJQy/3ylgujq1wkjXQ1q3bltrCBoO1Gid+a0Tgwp6oST3D5nBC
 aOZXZnxVeqa6qQs8QpLkicp/cwsIAysg9wVqMcyvW2+6E9KmC2F318LBZP/EczUp
 5n890ZKjeQefOmRKkxRvVLiDypEN/Ksqrp2mLNqSw7Rer9tIq3W0LQKQ07WKw3qj
 MNiMQl6GRu7grV7yMIykuTCpuS0Ih4zP/gPfXh87HfzbP2EpDGentuhaaVq1ixIm
 806WQ0VP/rydx8shBBkMWV+FkbuF3ZgQwHw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=invisiblethingslab.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=invisiblethingslab.com
 header.i=@invisiblethingslab.com header.a=rsa-sha256 header.s=fm3
 header.b=c6y+PVD3; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=N3j7fPB3
Subject: Re: [Intel-wired-lan] PCI Advanced Features (especially FLR)
 missing in several newer Intel integrated ethernet devices
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[invisiblethingslab.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[marmarek@invisiblethingslab.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marmarek@invisiblethingslab.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 0707C187055
X-Rspamd-Action: no action


--E+recVOcoXYWXhW2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Feb 2026 13:35:24 +0100
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Subject: Re: PCI Advanced Features (especially FLR) missing in several newer
 Intel integrated ethernet devices

On Tue, Feb 24, 2026 at 01:47:22PM +0200, Ruinskiy, Dima wrote:
> On 23/02/2026 17:33, Marek Marczykowski-G=C3=B3recki wrote:
> > Hi,
> >=20
> > I've got already at least 3 reports about e1000e device that is missing
> > FLR (which makes it harder to passthrough to a VM, among other things).
> > Interestingly, when looking at config space, the capability appears to
> > be there, just isn't linked to the list. For example:
> >=20
> >      sudo lspci -nnvxxxs 00:1f.6
> >      00:1f.6 Ethernet controller [0200]: Intel Corporation Device [8086=
:57a1]
> >          Subsystem: Lenovo Device [17aa:512b]
> >          Flags: bus master, fast devsel, latency 0, IRQ 19
> >          Memory at ab700000 (32-bit, non-prefetchable) [size=3D128K]
> >          Capabilities: [c8] Power Management version 3
> >          Capabilities: [d0] MSI: Enable+ Count=3D1/1 Maskable- 64bit+
> >          Kernel driver in use: pciback
> >          Kernel modules: e1000e
> >      00: 86 80 a1 57 06 04 10 00 00 00 00 02 00 00 00 00
> >      10: 00 00 70 ab 00 00 00 00 00 00 00 00 00 00 00 00
> >      20: 00 00 00 00 00 00 00 00 00 00 00 00 aa 17 2b 51
> >      30: 00 00 00 00 c8 00 00 00 00 00 00 00 ff 04 00 00
> >      40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> >      50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> >      60: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> >      70: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> >      80: 28 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00
> >      90: 00 00 00 00 1f 00 00 00 00 00 00 00 00 00 00 00
> >      a0: ff ff ff ff ff ff ff ff 03 10 03 10 00 00 00 00
> >      b0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> >      c0: 00 00 00 00 00 00 00 00 01 d0 23 c8 08 20 00 00
> >      d0: 05 00 81 00 b8 12 e0 fe 00 00 00 00 00 00 00 00
> >      e0: 13 00 06 03 00 00 00 00 00 00 00 00 00 00 00 00
> >      f0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> >=20
> > As you can see, the "PCI Advanced Features" is not listed. But, if you
> > traverse the list manually, you can see that the capability is there at
> > 0xe0 - it just isn't linked at 0xd1 (0xd1 has 0x00 instead of 0xe0). And
> > it appears it isn't just coincidence:
> >   - 0x03 at 0xe3 says FLR is supported (bit FLR_CAP is set)
> >   - writing 0x01 to 0xe4 (INITIATE_FLR) does appear to reset the device
> >=20
> > It's even possible to link the capability manually (write 0xe0 to 0xd1)
> > and then Linux is happy to use it via the standard `echo 1 >
> > /sys/devices/.../reset` interface (but, ofc, such linking doesn't
> > survive the reset).
> >=20
> > Based on reports I've received, it applies at least to devices with the
> > following VID:DID:
> > - 8086:550a
> > - 8086:57a1
> > - 8086:57a0
> >=20
> > Some of those reports at https://github.com/QubesOS/qubes-issues/issues=
/10657
> >=20
> > My question is: why the capability is not linked? Does it want a fix in
> > firmware? Or maybe a quirk in the kernel to restore working FLR?
> >=20
>=20
> Hi Marek,
>=20
> The FLR capability not linked is intentional - ICH8-based e1000e devices
> have issues with it. While it may sometimes work, in other cases it can p=
ut
> the LAN controller into a broken state only recoverable by a hard reset.
>=20
> Some previous e1000e devices (0x1502, 0x1503) exposed it properly via the
> linked list pointers, and this caused the above issues, therefore a quirk
> was issued to avoid using it
> (https://github.com/torvalds/linux/blob/master/drivers/pci/quirks.c#L5618=
).
>=20
> For later devices (I217/I218/I219 generations) it was removed from the
> linked list so that the OS does not find / attempt to use it.
>=20
> It would probably be better if it was completely cleaned from the config
> space, because your test (and mine) shows that if someone ignores the lin=
ked
> list and triggers FLR manually - it still affects the hardware, which may
> lead to unpredictable outcomes. I will inquire about it.

Thanks for the context.

> AFAIK, the recommended alternative to achieve an FLR-equivalent reset on
> these devices is D0-->D3-->D0.

Unfortunately, Linux doesn't want to do that either:
	Capabilities: [c8] Power Management version 3
		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=3D0mA PME(D0+,D1-,D2-,D3hot+,D3col=
d+)
		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D1 PME-

The NoSoftRst+ flag is set, and this makes pci_pm_reset() to skip this
method:

    /**
     * pci_pm_reset - Put device into PCI_D3 and back into PCI_D0.
     * @dev: Device to reset.
     * @probe: if true, return 0 if the device can be reset this way.
     *
     * If @dev supports native PCI PM and its PCI_PM_CTRL_NO_SOFT_RESET fla=
g is
     * unset, it will be reinitialized internally when going from PCI_D3hot=
 to
     * PCI_D0.  If that's the case and the device is not in a low-power sta=
te
     * already, force it into PCI_D3hot and back to PCI_D0, causing it to b=
e reset.
     *
     * NOTE: This causes the caller to sleep for twice the device power tra=
nsition
     * cooldown period, which for the D0->D3hot and D3hot->D0 transitions i=
s 10 ms
     * by default (i.e. unless the @dev's d3hot_delay field has a different=
 value).
     * Moreover, only devices in D0 can be reset by this function.
     */
    static int pci_pm_reset(struct pci_dev *dev, bool probe)
    {
        u16 csr;
        int ret;

        if (!dev->pm_cap || dev->dev_flags & PCI_DEV_FLAGS_NO_PM_RESET)
            return -ENOTTY;

        pci_read_config_word(dev, dev->pm_cap + PCI_PM_CTRL, &csr);
        if (csr & PCI_PM_CTRL_NO_SOFT_RESET)
            return -ENOTTY;

Is that flag set a mistake? Or maybe this method doesn't work either?
Note the device is presented as function 6 of a multi-function device
(together with audio device, SPI controller and few others)...=20

--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--E+recVOcoXYWXhW2
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmmdmw0ACgkQ24/THMrX
1yxMtgf/eqmbKxvGZqA3onqoWxZxTw/pTxGrRWnARz7OpC9vluJphPMxgY7OoxeC
lR26Kq78S/W9onvAylbH9t87h8UH269K9Yy8Z3ScozupODYj45xnsUcTaS0rz4l0
EEcpSJnzLzL3YJUlZh8BBb7grL+WaiBCWYCm3oZ04Uh4830vFijem+IBOBvkSsP9
ZVUtpHZJpi2fW7BvVuluYP9R1369frj7PIauQIkAMBnrZwmlrmWh9MvhEnTQ9/Fm
ZGB48LJvlVkttE53Qx+bdVSPFPo4tqsqCERzxH4wcDAg5sYvXwlrW+/oCN91sGRQ
mIWc3v4DXpsdUFJ19YYRg8poAUNCBw==
=JxeA
-----END PGP SIGNATURE-----

--E+recVOcoXYWXhW2--
