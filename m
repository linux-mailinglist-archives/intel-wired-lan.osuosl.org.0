Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZJnkIVoBVWoNiwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 17:16:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EB474CE7C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 17:16:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="GhFk0q/k";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmx.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C5D440913;
	Mon, 13 Jul 2026 15:16:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ym2hnaJCbdoq; Mon, 13 Jul 2026 15:16:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60A1140781
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783955793;
	bh=uOdMcUvqnDf9QymbkGi79gn/3pS0iSEbBfzDMkoE/TI=;
	h=Date:To:Cc:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GhFk0q/ktVs+KL6u2GN0DXn52K9Ed+RdcY3EEpTfQr5rkwA9z6yaqrdUwMWNmBEIt
	 iBoeSxGGc24b6CMLTAKOU/mIXKqgO41ptWSnuJP49PdmywO3T2+3TGOnJYXVoEbAvY
	 Urz703mUl6diWSglCKIUd1fKeRff2uZmOWGuEIHnVuDruycigaIUL1JuoIMY+yCzCU
	 uZxKwzsALK/TjY2dhZefj8EfazqZBQIgWMCMcfdp+GTIlcVgWjEv8dmWHneIzI8Md6
	 mTQWeDWxnKeHAiJm598JqA3a7dZa3uU6P3l/0nojvDQ7YxSApJfJ9yVAARgBhJJ+NA
	 Tb2l0ZMZMy6HQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60A1140781;
	Mon, 13 Jul 2026 15:16:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A1E6359
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Jul 2026 11:57:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5BE1140176
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Jul 2026 11:57:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qDOrcl04ua1C for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Jul 2026 11:57:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.17.22;
 helo=mout.gmx.net; envelope-from=vikdon@gmx.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8FB4840108
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8FB4840108
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8FB4840108
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Jul 2026 11:57:00 +0000 (UTC)
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1Mr9G2-1xMx3s2vG2-00kzB6; Sun, 12
 Jul 2026 13:56:58 +0200
Message-ID: <1dbf956a-e981-4b2a-ab5e-ddbd5905663c@gmx.com>
Date: Sun, 12 Jul 2026 13:56:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: uk
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Cc: intel-wired-lan@lists.osuosl.org
From: Viktor Donner <vikdon@gmx.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:C2XBNPJLzGUUTqsGmBeFCW3RHGTiEUXjhk82Ro6wGMXLjfXglBE
 GQBkXoTaZwFR4uqXn8JVvN6FITw2xv10O7CiMM8SQI5Bken8F+VfQZkaWpVoYKCC5/lXQZD
 a0VKVZ5Y2YE0ygTWE3HiVmjfmrrKdPrv+N9uAZI3nsalbbwz2MU3TlyKn1rt2KFZlrS28ht
 rNwGDZHneboAif54Y6x6A==
UI-OutboundReport: notjunk:1;M01:P0:5kuFpTWhhv8=;hKNrYKi0hU2JkYRc07MHmPqBWh9
 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
 =
X-Mailman-Approved-At: Mon, 13 Jul 2026 15:16:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmx.com; 
 s=s31663417; t=1783857418; x=1784462218; i=vikdon@gmx.com;
 bh=uOdMcUvqnDf9QymbkGi79gn/3pS0iSEbBfzDMkoE/TI=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:From:
 Subject:Content-Type:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=fhPqriMW7Gr2xEowG29rru+9GXF+YdHMiYVoewUu/wyYYVpo6HfP3HhBqTGlpy8O
 PlvZ+8793SqvG9TxUj+ZUGnLv0lMepJp3krY/VokcZrJSA4Jqp1R9YjYAk6yNcj3t
 VJgAtyzzRQnTPY0PsEArOCE7ipokQkoMjIZSlqBioqdOxbLgKwB1OK3lP9VGDemAo
 G5wJHN0/D7XmYd1Zxm4glLI7g4Gdbp/aAEHqTDpRSEh+w2UWDQVHqSoyRqIy9/FXM
 t6rzt8mDBxWTlHHr+YllhjWLNmwWE8vLvquzgcRoZWH6d4FheYw9Z4HZS2CNmkrL+
 sV+k1ywzfPF7K0xIPg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gmx.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmx.com header.i=vikdon@gmx.com header.a=rsa-sha256
 header.s=s31663417 header.b=fhPqriMW
Subject: [Intel-wired-lan] [e1000e] Intel I219-LM host becomes unreachable
 under VM network load when AMT SOL/IDER is active
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
	DMARC_POLICY_QUARANTINE(1.50)[gmx.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[27];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,gmx.com:from_mime,gmx.com:email,gmx.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[vikdon@gmx.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_FROM(0.00)[gmx.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikdon@gmx.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E8EB474CE7C

Hello,

I am reporting an issue involving the e1000e driver, Intel I219-LM,
network offload, and Intel AMT/ME remote-management state.

Environment:
- Host: Proxmox VE 9.2.4
- Kernel: 7.0.14-4-pve
- NIC: Intel I219-LM
- Driver: e1000e
- Driver version: 7.0.14-4-pve
- Firmware version: 0.4-4
- PCI address: 0000:00:1f.6
- Link: 1000 Mb/s, full duplex
- Host bridge: Linux bridge vmbr0
- Guest traffic: VirtIO VM network interface

Observed behavior:
When running a speed test inside a VM, at approximately 600+ Mbit/s
download traffic, the Proxmox host becomes completely unreachable over
the network:

- no ICMP response
- no SSH access
- no Proxmox web interface
- the physical/vPro console initially remains available
- a normal reboot may hang, requiring an AMT hardware reset/power cycle

The NIC still appears administratively UP and LOWER_UP, and the bridge
configuration and IP address remain present.

With TSO/GSO/GRO disabled using:

 =C2=A0 =C2=A0 ethtool -K eno1 tso off gso off gro off

the problem does not occur, but network performance decreases to
approximately 440/239 Mbit/s.

Relevant boot messages while MeshCommander / AMT remote management was
active:

 =C2=A0 =C2=A0 e1000e 0000:00:1f.6 (uninitialized): Reset blocked by ME
 =C2=A0 =C2=A0 e1000e 0000:00:1f.6: PHY reset is blocked due to SOL/IDER s=
ession.

After completely closing MeshCommander and rebooting, these messages
disappeared. TSO/GSO/GRO were enabled again, and repeated speed tests
did not reproduce the host lockup.

Current clean boot state:
- TSO: on
- GSO: on
- GRO: on
- tx_timeout_count: 0
- rx_errors: 0
- tx_errors: 0
- CRC errors: 0
- no failed systemd units

This suggests a possible interaction between e1000e recovery/reset,
Intel ME ownership of the I219-LM PHY, active AMT SOL/IDER sessions,
and high network load/offload processing.

Please advise:
1. Is this a known e1000e/I219-LM issue?
2. Is blocking PHY reset during SOL/IDER expected to prevent recovery
 =C2=A0 =C2=A0from a TX/RX hang?
3. Are there recommended driver parameters or mitigations other than
 =C2=A0 =C2=A0disabling TSO/GSO/GRO?
4. What additional traces or register dumps would be useful?

Hardware:
- Motherboard: Gigabyte Q370M D3H GSM PLUS rev. 1.0
- Primary NIC: Intel I219-LM
- Secondary NIC: Intel I211 using the igb driver, currently not cabled

Regards,
Viktor D
vikdon@gmx.com
