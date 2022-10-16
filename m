Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A35B660108E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Oct 2022 15:53:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD34E8127F;
	Mon, 17 Oct 2022 13:53:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD34E8127F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666014821;
	bh=LSiKvAqrVrBSVu0zwuMaIXpJqu3R4M09fr1cHKfAVdQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IrDgJryFCaGo2a1iQY4b4EkPhibbAVl7/XE1sp/1+PSmpGiPlprXO/iv+TjoMnUmF
	 uakq9ll4R7e9rlTT8qAx2piTMH8MlP6cE9M2IwtIEUgOcbTcM2OCZuxDp4XZj6TQLj
	 +OWOkfUArEda3vZRksEB/JCoPd2kjxknjVssOEr+UysQ1xx5XeHfnSVwYUXjLsXs0B
	 POkxlk7pbwlqaUoGrQK62c9T5Z3o29N1VDH+F7PZ2ApCFyfYaIfj4MiVmrqWO7/Xnu
	 1xQeRCyzD3PT6DUfJ0r9jUCKXq+e5IlhEeJg9ikSAV8FzaFAkV9lkro912nNDin0FI
	 XJVxyJWOS0Z2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cCo3BbuzWDov; Mon, 17 Oct 2022 13:53:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 886568129E;
	Mon, 17 Oct 2022 13:53:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 886568129E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6FB191BF37F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Oct 2022 10:08:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4758A4161A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Oct 2022 10:08:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4758A4161A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y3LIGTLcNiTl for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Oct 2022 10:08:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D303A4160A
Received: from ofcsgdbm.dwd.de (ofcsgdbm.dwd.de [141.38.3.245])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D303A4160A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Oct 2022 10:08:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ofcsg2dn1.dwd.de (Postfix) with ESMTP id 4Mqwnc1mQVz1xL1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Oct 2022 10:08:52 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at csg.dwd.de
Received: from ofcsg2cteh1.dwd.de ([172.30.232.65])
 by localhost (ofcsg2dn1.dwd.de [172.30.232.24]) (amavisd-new, port 10024)
 with ESMTP id 8p0dgI2n9WDL for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Oct 2022 10:08:52 +0000 (UTC)
Received: from ofcsg2cteh1.dwd.de (unknown [127.0.0.1])
 by DDEI (Postfix) with ESMTP id EB2D6C901023
 for <root@ofcsg2dn1.dwd.de>; Sun, 16 Oct 2022 10:08:51 +0000 (UTC)
Received: from ofcsg2cteh1.dwd.de (unknown [127.0.0.1])
 by DDEI (Postfix) with ESMTP id DFCA9C900CFD
 for <root@ofcsg2dn1.dwd.de>; Sun, 16 Oct 2022 10:08:51 +0000 (UTC)
X-DDEI-TLS-USAGE: Unused
Received: from ofcsgdbm.dwd.de (unknown [172.30.232.24])
 by ofcsg2cteh1.dwd.de (Postfix) with ESMTP
 for <root@ofcsg2dn1.dwd.de>; Sun, 16 Oct 2022 10:08:51 +0000 (UTC)
Received: from ofcsgdbm.dwd.de by localhost (Postfix XFORWARD proxy);
 Sun, 16 Oct 2022 10:08:51 -0000
Received: from ofcsg2dvf2.dwd.de (ofcsg2dvf2.dwd.de [172.30.232.11])
 by ofcsg2dn1.dwd.de (Postfix) with ESMTPS id 4Mqwnb5xvYz1xL1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Oct 2022 10:08:51 +0000 (UTC)
Received: from ofmailhub.dwd.de (oflxs04.dwd.de [141.38.39.196])
 by ofcsg2dvf2.dwd.de  with ESMTP id 29GA8phv000732-29GA8phw000732;
 Sun, 16 Oct 2022 10:08:51 GMT
Received: from praktifix.dwd.de (praktifix.dwd.de [141.38.44.46])
 by ofmailhub.dwd.de (Postfix) with ESMTP id 68B70E25F1;
 Sun, 16 Oct 2022 10:08:51 +0000 (UTC)
Date: Sun, 16 Oct 2022 10:08:51 +0000 (GMT)
From: Holger Kiehl <Holger.Kiehl@dwd.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>
In-Reply-To: <ea05a9d-b8b8-216f-d99-9b794f19f2cf@praktifix.dwd.de>
Message-ID: <68f4cde8-cb2f-f526-265d-2d5cdcfa53e2@praktifix.dwd.de>
References: <ea05a9d-b8b8-216f-d99-9b794f19f2cf@praktifix.dwd.de>
MIME-Version: 1.0
X-FE-Last-Public-Client-IP: 141.38.39.196
X-FE-Policy-ID: 2:2:1:SYSTEM
X-TMASE-Version: DDEI-5.1-9.0.1002-27204.006
X-TMASE-Result: 10--19.901500-10.000000
X-TMASE-MatchedRID: oTBA/+sdKaYMek0ClnpVp/HkpkyUphL9Mi5cVoUvU/bfrYpxwT811j13
 GoPFA1HFJjdZvprOsDxHPmHy6OeVI4DVR1zNwvHu2ymWcHNzzEzYUDvAr2Y/19Z5C2tydwt9bwY
 sfZTUes1l+KZhG9Ijo32Cywe/FAZ0I0LyKTLUz/+ZUG41i0KjmxZSD+Gbjz3IJEdV66mPROFSj9
 02t3M5P71vPbjkslMKpWip9Zjnp6UrqSb6h39QPIdlc1JaOB1TyHdfpwipSH6bKItl61J/yX2PY
 bDNMTe9KrauXd3MZDUD/dHyT/Xh7Q==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
X-TMASE-INERTIA: 0-0;;;;
X-DDEI-PROCESSED-RESULT: Safe
X-Mailman-Approved-At: Mon, 17 Oct 2022 13:53:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=dwd.de; h=
 content-type:content-type:mime-version:references:message-id
 :in-reply-to:subject:subject:from:from:date:date:received
 :received:received:received:received:received:received:received;
 s=dwd-csg20210107; t=1665914932; x=1667124533; bh=zamKnwBiutPTM
 v8R2M4U3AikQo0InxYoAWWVktLey38=; b=cU60S6hD9GjKaW5iClU90AdnQLyo3
 2Gtex5P4R/OXAfjxnQVxEEfsNi944tTXtf1pwax0Za4GSh1UU5L4/IXkA3xFsBER
 JEAaRMs6BmSG3adnQd8VADPqw4xWcEidVPBuQn3u56d+J69NjkR8tMxGuyLWdf6w
 zfGoty/lNMNvI33LUTv17CJRyWkQUcPP7ZDcVMfDLVe6WWuGTqxoQhsHmc0wvZIs
 Fsqbx+9t8IqEYiKDCkcoVUio0/Yt+iwUhgzZk8iflko7XzfJMuo/kzg9TC88MZkN
 veDpF5oJGT2wcDWfrNmxH8l1d6iiJFHy5xWfu8ghalcoT2GFivNsXLtQw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=dwd.de header.i=@dwd.de header.a=rsa-sha256
 header.s=dwd-csg20210107 header.b=cU60S6hD
Subject: Re: [Intel-wired-lan] ice driver not loading with 256 CPU's?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 15 Oct 2022, Holger Kiehl wrote:

> Hello,
>
> I have an AMD system with 2 sockets (each with a EPYC 7763 64-Core)
> with a total of 256 CPU's and a 4 port Intel 810 nic and get the
> following error during boot:
>
> Oct 15 10:53:35 hermes kernel: ice 0000:e2:00.1: The DDP package was 
> successfully loaded: ICE OS Default Package version 1.3.26.0
> Oct 15 10:53:35 hermes kernel: ice 0000:e2:00.1: not enough device MSI-X 
> vectors. requested = 260, available = 252
> Oct 15 10:53:35 hermes kernel: ice 0000:e2:00.1: ice_init_interrupt_scheme 
> failed: -34
> Oct 15 10:53:35 hermes kernel: ice: probe of 0000:e2:00.1 failed with error 
> -5
>
> Get this error when using default kernel from Alma9 or as above with
> kernel.org 6.0.2 kernel. Looking at the code
> (drivers/net/ethernet/intel/ice/ice_main.c ice_ena_msix_range() starting
> at line 3928) I would assume if I had less CPU's this would not be a problem.
>
Indeed, booting with nr_cpus=252 the driver loads:

Oct 16 10:02:30 hermes kernel: ice 0000:e2:00.0: The DDP package was successfully loaded: ICE OS Default Package version 1.3.26.0
Oct 16 10:02:30 hermes kernel: ice 0000:e2:00.0: PTP init successful
Oct 16 10:02:30 hermes kernel: ice 0000:e2:00.0: DCB is enabled in the hardware, max number of TCs supported on this port are 8
Oct 16 10:02:30 hermes kernel: ice 0000:e2:00.0: FW LLDP is disabled, DCBx/LLDP in SW mode.
Oct 16 10:02:30 hermes kernel: ice 0000:e2:00.0: Commit DCB Configuration to the hardware
Oct 16 10:02:30 hermes kernel: ice 0000:e2:00.0: 252.048 Gb/s available PCIe bandwidth (16.0 GT/s PCIe x16 link)

Could you please fix the driver so it works with more then 252 CPU's?

Many thanks in advance.

Regards,
Holger
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
