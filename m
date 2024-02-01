Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CD2845956
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 14:52:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D6BF64047B;
	Thu,  1 Feb 2024 13:52:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D6BF64047B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706795573;
	bh=OogcyfdpfTs2059FyNWKDfxdIMwy/Wf0EdjSpwPuYeE=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8LsdcRzPA5Gm9yO5nhIQr60kHHMs+mErbaq/DMsIyeZe+ujrkHUhfjstv8SQY8Sei
	 upVe63w8cTf3RWuaShHGM+DvOA1QURg7P388doZdDyvOOaFb3d2wAtcMmBFP2zIdJv
	 25Rls1cdrGUjC9ASoXX/aABUT50ykKUrqm/ERaINDLzHTxYg0JUtr4CuMsU9cuZS4/
	 J715qASNq36v83+eeYcQVlpgyPnyP5qBsx0mImprKoB8WEnNUrd1cJYz9y2XmGk2xF
	 8lPAqyw15lnlpPYGzzaNO7Ext1QFPta/4y4vuBXkT6V7nZmaRJnY9rh8iguT8MfOrO
	 QAWwlJf9h0J9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E6uxbhlJ-L14; Thu,  1 Feb 2024 13:52:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96E69400E7;
	Thu,  1 Feb 2024 13:52:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96E69400E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 93F0E1BF396
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 13:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0524F40016
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 13:52:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0524F40016
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7CUjOhj-yCXv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 13:52:45 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4389D4210B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 13:52:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4389D4210B
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Andrew Lunn <andrew@lunn.ch>
In-Reply-To: <3629e504-4c22-4222-b218-32c9945ff77e@lunn.ch>
References: <20240201125946.44431-1-kurt@linutronix.de>
 <3629e504-4c22-4222-b218-32c9945ff77e@lunn.ch>
Date: Thu, 01 Feb 2024 14:52:41 +0100
Message-ID: <87wmro70ly.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1706795563;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OogcyfdpfTs2059FyNWKDfxdIMwy/Wf0EdjSpwPuYeE=;
 b=dlhPWdiCX0eaW2qNQyddeSpThyxY92nMpXXL/5IKXzLU3RFYpG7gCCumDyqE3HeT1unFKn
 oqBh57oY+KsFVd1TsLlBp+k14+L5qaeSCt5TRyy/AtiamWMP7N0SEkmCsz7mGSsbii19hH
 FUvOvfj4mCooZ+fcoGDjMpge1wR02I9eXF09cFWFhN/lz6SlCectKN06JdeCDED/7+2B0K
 IjLiXeqvG7+uXYg+QwiYH+9UsRNiWRHIJNhYtDNu9YJRXa36+hKnL8uFU76Em4kS1tIptw
 Vng+XGCLGA8g1Hq9rwNK1BT/DHroWg5DLKBJzuvcAjqgn+twT5S64MaPuNdKMQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1706795563;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OogcyfdpfTs2059FyNWKDfxdIMwy/Wf0EdjSpwPuYeE=;
 b=vKmhuTm8LPRD4Pbbmw+xL2YJER7/u+Fy4uX1bbib+SSz36wARLM0OhQy8PeF46EpD+3lAG
 Qr/7R7IQ9Gz/aTCQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=dlhPWdiC; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=vKmhuTm8
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igc: Add support for LEDs
 on i225/i226
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Thu Feb 01 2024, Andrew Lunn wrote:
> On Thu, Feb 01, 2024 at 01:59:46PM +0100, Kurt Kanzenbach wrote:
>> Add support for LEDs on i225/i226. The LEDs can be controlled via sysfs
>> from user space using the netdev trigger. The LEDs are named as
>> igc-<bus><device>-<led> to be easily identified.
>>=20
>> Offloading link speed is supported. Other modes are simulated in software
>> by using on/off. Tested on Intel i225.
>>=20
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
>>=20
>> Changes since v1:
>>=20
>>  * Add brightness_set() to allow software control (Andrew)
>>  * Remove offloading of activity, because the software control is more f=
lexible
>
> Please could you expand on that. Activity is quite expensive in
> software, since it needs to get the statistics every 50ms and then
> control the LED. So if activity can be offloaded, it should
> be. Sometimes the hardware can only offload a subset of activity
> indications, which is fine. It should implement those it can, and
> leave the rest to software.

Activity can be offloaded to HW only with Tx and Rx combined. Individual
Rx or Tx activity is not supported. But sure, when a user selects Rx and
Tx it can be offloaded, if it's too expensive doing it in software.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmW7oikTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgo05EACnxY2U5Iw6L1XYr4uU+ERxEyZ6f582
8Ro2QsR+RDgq0R4mEXRM2t1bb/665o6yEqCuk/rLVK6bIigowuUtyznqkZ/bXUtr
a09pa2o8gB5skWueeTVZh2HwWrEIFuHAa2gs5kR+dokEAO4rDupGZjrX52l46I8F
6A/w51tbM5vrGqdOwsKcw+nk1BPyhd+zNHSHIJaQICx6fSQ5BwMEcijcbKa8xlyV
RhFSkFlyoESrk9oghfZUiwRHokFwmM7Z+F9GvbRzj5htCEyxZC7PhPu1Hhte3iE7
Efk4fa8lYsvrctwO+3h7CsigY7qidjO9W5tRtkUBfLA4Qy8uTk7+5YAvhGhnZOpE
d0wM7nLSjjK09DS7BVPQfQsAbGJQy/HBNt1xx3MqFFA/tnZ78pM0h9YGjw8euJxO
R1p2Cp4P8bNklmnFpAErI9hU32mGDN+7cL6/IOBvuZeXL4UX4gpuUtyoT7rmx4Fo
8pkCuIyeEM1DvrLDqfsPZOkPF/PHhieOmMwrqAVJXejdjk+YBDdSpZzfrUE6DwZs
Kd86lO/8WY4ja2PjZpuZvZDapufU/QQhLy9i6fHo/wtBhVknlV4fRa7rXp7GtvS1
huNrznEGYYFeMC6p8rbrm5sPmYjQq7KoopfA6mDWvCAS57mbx+F9fMCjvxSY+CTv
ThPsezdBBIWvrg==
=ZhtF
-----END PGP SIGNATURE-----
--=-=-=--
