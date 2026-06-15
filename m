Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fcTfLupnMWpoigUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 17:12:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1017B690D43
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 17:12:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=W7yRqXgh;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmx.de (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51EAC8558C;
	Tue, 16 Jun 2026 15:12:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s29bP9hgP771; Tue, 16 Jun 2026 15:12:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B31685475
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781622758;
	bh=jSx3vFjseUZCLVWbOLiqF2EIr0Elyg6HZ6B9OjtTpMY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W7yRqXghlMKN8G4UePRqBws+Zy1cnEHX/nASdIb/8ChdhSuZNI3BV4VU17LciVUeM
	 gr40Caqg/htWM2oFMR+D0BycYrp/ZjkwA8YxGWG1cIxt8trl9EQZ2w/OgcugqxpoWh
	 5dYyifC9I7iX+7IRu+kPFOQQDc2mFImnetQulLHIP5u2LB7zjfJkOlmHqdmuQQWIUj
	 Xa8lJK6deK51EMYqn1cNaVQ1PEl3teYuHCKFl03dbHEl14J1oE5/AKDHjlMooC0Q29
	 /oeFNlpFR+73gImOIT0wE+7x2S34joIKCax1uTmhM7k83N1BXm9NLCQKa8DTvEuka/
	 KtSEhnd6B9JYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B31685475;
	Tue, 16 Jun 2026 15:12:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5ADE42F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 20:36:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3DD7E41487
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 20:36:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jQkee5oDDgzW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 20:36:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.15.19;
 helo=mout.gmx.net; envelope-from=deller@gmx.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D4E7540526
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4E7540526
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4E7540526
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 20:36:12 +0000 (UTC)
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MWASe-1wgINv3MkM-00WtCj; Mon, 15
 Jun 2026 22:36:09 +0200
Message-ID: <9d80ed59-5483-4c33-9d27-52fdf24aac6e@gmx.de>
Date: Mon, 15 Jun 2026 22:36:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>, Helge Deller <deller@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <ai8hmGQmXQu64Ld3@carbonx1>
 <e78576e0-9b55-446f-9d10-da3b7aec9b31@lunn.ch>
Content-Language: en-US
From: Helge Deller <deller@gmx.de>
Autocrypt: addr=deller@gmx.de; keydata=
 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
In-Reply-To: <e78576e0-9b55-446f-9d10-da3b7aec9b31@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:JJxrpBqmbzHZ4ovM0RX6I6FHeca82GPQ440ebuBwp+eJ9tAPnEJ
 U6P2/97YjdCxlJ3IHYizFNadN2kIjBr5N6UQKoTPDahknGky/Fv08fqGWEvvH8YrecxQCjE
 ZHyXuAivd3pgZt8hW2aA9Ypm++tzNiRB27bNL/MepdH71XeWr5t+NqjNPGVcr/Alb9oddnk
 3j0t0IANs0l/5tj0UmcvQ==
UI-OutboundReport: notjunk:1;M01:P0:Ah3v4mWKrZE=;wLtKQbiPN0X+LqrQ4IMd7UviBBB
 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
X-Mailman-Approved-At: Tue, 16 Jun 2026 15:12:36 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmx.de; 
 s=s31663417; t=1781555770; x=1782160570; i=deller@gmx.de;
 bh=jSx3vFjseUZCLVWbOLiqF2EIr0Elyg6HZ6B9OjtTpMY=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
 References:From:In-Reply-To:Content-Type:
 Content-Transfer-Encoding:cc:content-transfer-encoding:
 content-type:date:from:message-id:mime-version:reply-to:subject:
 to;
 b=dZHDpZTp+i1PapL/5Fz2m6vTsFA9R3WjgOtKLZSfGYH+G0CWB5KgS23rf9K7i9/k
 LTuYUO3vp3aougDkw7rvsDHsKqyQkzVdmUoGzCjG1aDnPyeBmIitI3W4OLJZ8CG0h
 CvkTjdyT+VHqUFx4Qa7qTteafPSmlvLOArFz9P3U8NoR3RDVOv9jAtrbfGUfFQfbz
 pwCQfQqy3Cth07h45JJ/dT212TGp0m7mvb47gvgUjkelVWk/nObzNzSTPuPEoH6HW
 fI8iE8ZWb0CeZIU7TC1y+7O1pbN6t8ZAPjx4C/PMMu5RLbbPCYdU0HtYOHgGNoz5w
 3PyjbzdwaVwn8MmQBA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gmx.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmx.de header.i=deller@gmx.de
 header.a=rsa-sha256 header.s=s31663417 header.b=dZHDpZTp
Subject: Re: [Intel-wired-lan] e1000e: Report link down after "Detected
 Hardware Unit Hang" ?
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[gmx.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:deller@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gmx.de:mid,gmx.de:from_mime,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	FORGED_SENDER(0.00)[deller@gmx.de,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmx.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[deller@gmx.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1017B690D43

On 6/15/26 18:41, Andrew Lunn wrote:
> On Sun, Jun 14, 2026 at 11:48:08PM +0200, Helge Deller wrote:
>> I'm regularily facing the known "eno1: Detected Hardware Unit Hang:"
>> with my on-board intel e1000e NIC hardware.
>> Since none of he various tips on the internet helped, I had the idea
>> to setup a master/slave bond networking to fail over to another NIC whe=
n
>> the Intel chip hangs.
>>
>> Sadly this doesn't work as intended, because the link of the intel NIC
>> isn't reported "down", so the failover never happens, unless I manually
>> start "ifconfig eno1 down".
>>
>> My question: Shouldn't the intel NIC ideally report Link Down if we kno=
w
>> it hangs? That way a fail-over should at least happen, right?
>>
>> Below is a completely untested patch.
>> Does it make sense that I try to test and/or develop such a patch, or
>> are there things I miss?
>=20
> If the interface is dead, then setting the carrier down makes a lot of
> sense.=20

That's what I think as well. Thanks for confirming.

> One question i have is, what do you need to do to recover the
> hardware? Will it correctly set the carrier up when you do the
> recovery?

The only way I could recover was to plug the network cable and re-insert i=
t.
I have not tested bringing the NIC down.
But in both cases the driver will need to re-detect the media & link

> Also, just looking at your proposed change, it is not clear to me why
> such an assignment will result in carrier down. It would be good to
> explain it in the commit message.

Sure. The patch I attached was completely untested and just based on
the analysis of the flow and how to make the Link possibly report to be do=
wn.
Maybe someone knowledgeable of the driver has a better suggestion how to
report the link down situation in a clean way?

Helge
