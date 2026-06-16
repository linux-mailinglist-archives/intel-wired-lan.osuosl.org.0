Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YdGNAgmAMWrmkwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 18:55:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DCA692959
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 18:55:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="aEJsu/KM";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmx.de (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A51E608EE;
	Tue, 16 Jun 2026 16:55:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jgy9DAz-9XbJ; Tue, 16 Jun 2026 16:55:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C52C261472
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781628927;
	bh=TFqwwniPra8sjDNONWk1icCHtPK5qBnd0w5QvJ+fGmQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aEJsu/KMsOMRPVCKHWQY9lzUX0wx6tCNZBiv/ZJdOCVJihOMdBOdFtu4xrlVIICKs
	 EQrBMIrL6tZfjilkhNRYk2yYlKNzmiRvXxTZhKu+7pYZ8wkYYIGck4gUB3h5DlNj/6
	 E4W/qUwxCiBLEbY4LaOkoXpywm8cggcxbGVEEtuUU7i4HA3W4QBjn0/qlVFl265Ya0
	 KevFdMATwUfoo9z4bezGM7KIUeV2uRI47Czgd0bUfLwuOEJvSRSVln6TrY/6ODfyrR
	 mS7wxGT+aJjkpKOd0XgbUyBDosfC84SJ3kNjtm1s4gImtayd4xjFI0+7MgdjPwqAhT
	 5cJ3poWw6bBAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C52C261472;
	Tue, 16 Jun 2026 16:55:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C52E0169
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 16:55:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C306A84D65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 16:55:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AMw5engmnTDY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 16:55:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.17.22;
 helo=mout.gmx.net; envelope-from=deller@gmx.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6A07584D35
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A07584D35
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A07584D35
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 16:55:23 +0000 (UTC)
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MbRjt-1xAmYf0fKD-00l9QF; Tue, 16
 Jun 2026 18:55:08 +0200
Message-ID: <374b8aa0-a35d-4a74-adb2-1b9b2c7a1701@gmx.de>
Date: Tue, 16 Jun 2026 18:55:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, Andrew Lunn <andrew@lunn.ch>, 
 Helge Deller <deller@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <ai8hmGQmXQu64Ld3@carbonx1>
 <e78576e0-9b55-446f-9d10-da3b7aec9b31@lunn.ch>
 <9d80ed59-5483-4c33-9d27-52fdf24aac6e@gmx.de>
 <51828156-e859-44db-9926-c076796d0f75@intel.com>
Content-Language: en-US
From: Helge Deller <deller@gmx.de>
Autocrypt: addr=deller@gmx.de; keydata=
 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
In-Reply-To: <51828156-e859-44db-9926-c076796d0f75@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:kTJR/JeUxy0TtjPb2JfYpb9gSyXE2bA5SL2GEaNuteLynJCJ3CL
 aU42VsIFumGjeJIjr06s2AEtHKLG1FS2EJaua4Kht0TYH6Ttk3va/2yJC7qdbZnbib8M/BB
 XS8LeMw7c8h54snkK4aEmubJOvAxSSUsjgNi5HtF4fAAxlSQJXpXDGYRxapZRbdOKGgTkUd
 tzO1BVvM4D6Vm+HcMhMVQ==
UI-OutboundReport: notjunk:1;M01:P0:i6T7GqbPgIU=;QRz0CUz+k+ZdT+C7z1X7hBdcRRE
 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
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmx.de; 
 s=s31663417; t=1781628908; x=1782233708; i=deller@gmx.de;
 bh=TFqwwniPra8sjDNONWk1icCHtPK5qBnd0w5QvJ+fGmQ=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
 References:From:In-Reply-To:Content-Type:
 Content-Transfer-Encoding:cc:content-transfer-encoding:
 content-type:date:from:message-id:mime-version:reply-to:subject:
 to;
 b=XQoCz8Bcs4GHOWqu52E66ZfXaeA7RTENjVEVM6eXqS5vYnVGcAzQlIb/YKnNLR1+
 OMmwuq69K094RiXIePwcQFr6N2L0YKP2kt4keGaNoEgOH65y6yfwj3cHyhoMZjJ03
 lIED1hN6xot0AfMzdV5lsTQ+4cTADIBoAnXdmwwkLUGGkiGlvO2D0zy9UGU7NBRWG
 u0OkbvLV0AIK485Kcnhb6TEASha03mBmDtSx38kmpIcWChY00uinIGCUlfcopFYp7
 GORPb1oEvTtEuGWJtZ3KTT/0OW8zXWXd35Q0kNnbH9CoU8HHlSxFvjyQVjrmSRpmt
 hymbOSwYxDPEWdFlMw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gmx.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmx.de header.i=deller@gmx.de header.a=rsa-sha256
 header.s=s31663417 header.b=XQoCz8Bc
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,gmx.de:mid,gmx.de:from_mime];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:andrew@lunn.ch,m:deller@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[deller@gmx.de,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmx.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[deller@gmx.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 46DCA692959

Hello Dima,

On 6/16/26 18:20, Ruinskiy, Dima wrote:
> On 15/06/2026 23:36, Helge Deller wrote:
>> On 6/15/26 18:41, Andrew Lunn wrote:
>>> On Sun, Jun 14, 2026 at 11:48:08PM +0200, Helge Deller wrote:
>>>> I'm regularily facing the known "eno1: Detected Hardware Unit Hang:"
>>>> with my on-board intel e1000e NIC hardware.
>>>> Since none of he various tips on the internet helped, I had the idea
>>>> to setup a master/slave bond networking to fail over to another NIC w=
hen
>>>> the Intel chip hangs.
>>>>
>>>> Sadly this doesn't work as intended, because the link of the intel NI=
C
>>>> isn't reported "down", so the failover never happens, unless I manual=
ly
>>>> start "ifconfig eno1 down".
>>>>
>>>> My question: Shouldn't the intel NIC ideally report Link Down if we k=
now
>>>> it hangs? That way a fail-over should at least happen, right?
>>>>
>>>> Below is a completely untested patch.
>>>> Does it make sense that I try to test and/or develop such a patch, or
>>>> are there things I miss?
>>>
>>> If the interface is dead, then setting the carrier down makes a lot of
>>> sense.=20
>>
>> That's what I think as well. Thanks for confirming.
>>
>>> One question i have is, what do you need to do to recover the
>>> hardware? Will it correctly set the carrier up when you do the
>>> recovery?
>>
>> The only way I could recover was to plug the network cable and re-inser=
t it.
>> I have not tested bringing the NIC down.
>> But in both cases the driver will need to re-detect the media & link
>>
>>> Also, just looking at your proposed change, it is not clear to me why
>>> such an assignment will result in carrier down. It would be good to
>>> explain it in the commit message.
>>
>> Sure. The patch I attached was completely untested and just based on
>> the analysis of the flow and how to make the Link possibly report to be=
 down.
>> Maybe someone knowledgeable of the driver has a better suggestion how t=
o
>> report the link down situation in a clean way?
>>
>> Helge
> This does not seem like the right direction to me.
>=20
> The "Detected Hardware Unit Hang" print does not indicate that the
> interface is dead, but that the transmitter is stalled.

Ok. But effectively it means there can nothing be transmitted then at this=
 stage,
which somehow is the same as if the Link would be down.

> This can be due to an unusually high load, or a HW fault / race conditio=
n with another component, etc.
>
> When a hang is detected, the transmitter is stopped with
> netif_stop_queue() and eventually ndo_tx_timeout triggers a full
> reset to the device, which in many cases recovers it from the hang.

That would be optimal, but I have never seen it recovering from such stall=
s since years.
Also looking at the many reports in the internet, people say it just
hangs and does not recover until the cable is plugged out (I might be wron=
g!).

> If the hang is persistent, we try to understand the cause and debug
> it. Permanently marking the device as 'down' because it hung once is
> not going to be the optimal solution.

Of course debugging this situation is preferred but it does not help when
the productive remote system stays unreachable forever.
Right now it just fills the syslog with the same stuck message.
Even an module option like "report_link_down_on_hang after 5 automatic re-=
tries"
would be good compromise.... You still should be able to get the necessary
debug info then.

Helge
