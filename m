Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B285B9424
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Sep 2022 08:09:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7935141809;
	Thu, 15 Sep 2022 06:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7935141809
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663222156;
	bh=TH0uu/Bbc2j5+RHqD0L0m0MHK6/U77Ymq84YsaBWV9A=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rDs+5f5/Tp+2SbAzXC7OGKgUXSkhonyghQK/zT1gPDFg6wFGD7lZJ612XyL3DNc3U
	 TkVkRia++Zr/Zot3x6C7Cyd/cjKi9wDqcBad24tXsgd4hqaHCe7ZnWNZCkcn5CKaWd
	 xW80iqCyzSv9gBl0NNYhM8OvnHqGatBHbKUTe6NT4ZWSYATDnLqVDwBg2uJkFAhtZD
	 yUbFpMAVFxmXyvUd97eVOk3UUfd0UNaBs7ME8Tkeol36OybzHiAYJKNMhBRqmlib6D
	 dm8Aev8EWhxaz+p8nm8VbyVTpT62byMT3c3koYzievldvZ7qYTzjBZFKAET618R9EN
	 /8csIC212O07A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fuw-eM9oQeoz; Thu, 15 Sep 2022 06:09:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2EB7417D2;
	Thu, 15 Sep 2022 06:09:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2EB7417D2
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 49DA31BF873
 for <intel-wired-lan@osuosl.org>; Thu, 15 Sep 2022 06:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 127A240FE2
 for <intel-wired-lan@osuosl.org>; Thu, 15 Sep 2022 06:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 127A240FE2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wLMEehD7PBhC for <intel-wired-lan@osuosl.org>;
 Thu, 15 Sep 2022 06:09:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 217BA40C29
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 217BA40C29
 for <intel-wired-lan@osuosl.org>; Thu, 15 Sep 2022 06:09:07 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
In-Reply-To: <SJ1PR11MB6180E0B962FDC15ADC22649CB8469@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20220914144942.22700-1-muhammad.husaini.zulkifli@intel.com>
 <87a6714w2w.fsf@intel.com>
 <SJ1PR11MB6180E0B962FDC15ADC22649CB8469@SJ1PR11MB6180.namprd11.prod.outlook.com>
Date: Thu, 15 Sep 2022 08:09:02 +0200
Message-ID: <87tu59xj7l.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1663222144;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=EJ45/iNrlNT93BMNNMf+zGCYno+uGIdcONqpAoyOstk=;
 b=qRV8y2W+xICFTS95zkE+1z1X+UIfK59EK1lGviBIKJYlgRxWiURAiU3EUGz7vBL/BUPf3g
 TbkdMD81wuahV4JN8N/ee3E0WfD0izzZa1JRFpZVK9D1TbS+JQOSe2UlPou953g4nmChBT
 f/CJzrm/HfWeLVuU1lPVR4OG/THHhT7Qz+42Oz2kvKurD6DD8UMObWDgcDkNB+bCG0S2Bj
 GqMmoZV+NkjS2hg+RigneWI/Kv5hOAF26b3DYclyhbGPF+ClJODSXJi9lcW1M/st6eCzmP
 Y4ZN9W0xg/6bZDmXULYcouEue0D/0Jn/JqXkWwmKdywRCua5X7/9ovaUeYNrlg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1663222144;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=EJ45/iNrlNT93BMNNMf+zGCYno+uGIdcONqpAoyOstk=;
 b=PSpsPCK6Vtw9KF9ql95EWtgjz3aAlBULj3VXn0BxZNsquLA9eq4I3Gkb0mLoawUK8tXSXc
 c5Px0RpJhYuen3Bg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=qRV8y2W+; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=PSpsPCK6
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Fix kernel NULL pointer
 dereference
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
Content-Type: multipart/mixed; boundary="===============6775027729548232525=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6775027729548232525==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed Sep 14 2022, Zulkifli, Muhammad Husaini wrote:
> Hi Vinicius,
>
> Thanks for the review. Replied inline
>
>> -----Original Message-----
>> From: Gomes, Vinicius <vinicius.gomes@intel.com>
>> Sent: Thursday, 15 September, 2022 3:04 AM
>> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
>> intel-wired-lan@osuosl.org
>> Cc: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
>> Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Fix kernel NULL pointer
>> dereference
>>=20
>> Hi Husaini,
>>=20
>> Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com> writes:
>>=20
>> > This patch fix the null pointer dereference when dereference the
>> > pointer that is expected to be valid but is NULL, typically will cause
>> > kernel crash as below:
>> >
>>=20
>> This part of the message only repeats that you found NULL dereference
>> related crash, which is already clear from the splat below.
>>=20
>> Can you give more details about how you manage to crash? What is schedule
>> that you tried to use, that kind of thing. Perhaps the problem is somewh=
ere
>> else and we are only hiding the problem.
>
> With below schedule, if you are not try to dereferencing the pointer, we =
cannot catch this.=20
> Might be compiler already handle it. This is a guard to ensure that "prev=
" pointer always valid
> Address before using it. It will always NULL if you have 1 GCL schedule e=
ntry.

Hm. Yes, prev is NULL for the first schedule entry. Nevertheless, it
shouldn't be referenced, as `queue_uses[i] > 1' cannot be true for the
first entry unless I'm missing something.

>
>    Example schedule:
>
>     tc qdisc replace dev ${INTERFACE} handle 100 parent root taprio num_t=
c 3 \
>        map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
>        queues 1@0 1@1 2@2 \
>        base-time ${BASETIME} \
>        sched-entry S 0x01 300000=20
>        flags 0x02

Well, with this schedule I cannot reproduce the issue. What kernel
version are you testing? Mainline?

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmMiwX4THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgkLRD/929oG4iXxqgULeD7IMEdq4+sZCVzY1
fEBSZ2DIWpItBBHz2yQ+9jUC5rt3byCqcjI/tNkya/dRkwkPnRG0pZfzf+pSuSZ9
YXgaBjmr12GjKBEqAneoBLCa4ya5jI/YHaasd6SeZVR2o2tFYWdiz+nsItx7YCP7
i0eT/HdY3BAwS//lg6FasduvFD+4GBEwbdhJQ9hJ2N87ypBtH86CS5h7G7cH9sWg
I0LwYpK9hIu/FkhSBF2690JKBblpHl8GH0cuY5YGo3z59MbfZIbPQrkO5orT4RFd
+o9I9cu8Nzk+wxIWESg5S0KFpMvBHHFM2qRr7L3QFkyHPFk/3/PVQQZ/feNTCVOA
ycskMoWz/26P0KEY2VLN5aLCkjv3/tBio/3vej3FZV3YrKPtkr4BIO44rAzhVEjG
4cT18zhGeSpnXlp728n7CxXhVnOF41XnALu6+scBwPSepr3jfn/SVu45W2qmsf6J
uLhztBw7SsxmV3msTOWZp70WF6j8qAANhm6ux7X/Jh5fINKsf4qg7spGnodYLLz5
0j0zrmI4YYfk8a3iqjrnmQbXBWVB1zgKDy+cbZX3D8LEQOF9+7zGknsjGF4LKTwK
DWS6AoJ4F2kdqV7Sf4XS7gYjflImIdEtoavnTr/U1lxDoe4O0FnhDDfn3mthEsbL
9MEX7nnlgBAqww==
=FdS0
-----END PGP SIGNATURE-----
--=-=-=--

--===============6775027729548232525==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6775027729548232525==--
