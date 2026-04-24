Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODKWO6/y72k5MwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 01:35:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E00247BE0C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 01:35:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EBBD403E1;
	Mon, 27 Apr 2026 23:35:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tlwvElll34xG; Mon, 27 Apr 2026 23:35:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D80DB4043B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777332908;
	bh=nIqnq4eOfwhh4jb251XIdAgxerQL3WDi+2J6JZvEmqM=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LIyvf6We8j9+MNf5EouD8QSeGKAk1YvZsvpXmcMO2PneZMvlZPCq6Pp6hL0KxElNH
	 1E80C80iJPbDbeaEJgK2LrRyU4v0Di7orS6CXdSarda+0U0TH9UN0cEmn0ZxsJb4Nt
	 k0Z6WfSG7Z9wMbwfwuUqhWdns6H6JdQ2xBz9+4byBC+lilo5dRy0bMR3TL2Jewhyk2
	 FoMXvbM2OoM6/Ytkju8h1TpR1OqPiEeVGmylUrmIN5DX+BMPHp5BU7V/QCHbfXpCHN
	 h7DkkiIff8gqn624+yobKiH1lqlHrUXu5SqQu0AjWNQRNSJxch/WsTB+vcZwuyDphQ
	 6NpGDEkU1ImFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D80DB4043B;
	Mon, 27 Apr 2026 23:35:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B23DD206
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 07:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9855C4214A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 07:29:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9En0KE94GQcv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2026 07:29:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22c; helo=mail-lj1-x22c.google.com;
 envelope-from=rickyusap@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 825704033E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 825704033E
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 825704033E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 07:29:58 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id
 38308e7fff4ca-38def541b0bso64939491fa.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 00:29:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777015796; cv=none;
 d=google.com; s=arc-20240605;
 b=FwJg8J7bn8jO5fJv4kZs+BQxfhALtzqdI1vL/NCCecwWIjM68QwEO4h9ysja7Ll8fl
 FfO3HUXsefcdzIyRHao+1REmpAXyDdnbHctblSQE6HqO0KJ4gXvdcmY6paLb1dRmCHU/
 XYpeZr5fV1Yyj5jzJcUw6zAgMOR1EGAmN3bbqviqDk5ZQ2YumyMWUz8QIUNy4KHBWXxN
 L94mwOjOTCLEi3v97Tq/+odyhoiELIkPRlGX6KHroT7/TqGiEiQsLr4WYkQ5zteyONaM
 XlDieG8tqRUPBn+6mCbpniYB73wSIRhZYMu5vs3r9wNGg860+gSUPV6VBS7CFRFTuo0l
 ze5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=nIqnq4eOfwhh4jb251XIdAgxerQL3WDi+2J6JZvEmqM=;
 fh=nxDzozNBJskkhstE76i9Zf7tKBQ6AdNyO5Z3vjScpg4=;
 b=aCOwy0+tBvP4UH4XQxCytkc0D6GRSq69meA6kKMXo1EQS8ZbnWjCnYV9ccN55+0XqH
 HbH3DNoTGsaQ0pby9eLHthk7Rc70/V/9AG6f19fFGGGvbJylz7q1TikXz6mjjSgCY4Do
 RTKQNHeAWmz7q1cEitH6RgQ+TWu2NsgHHFObaZhObWY4OLvgBox7uK1zRSxmENXgrCFY
 s3gqMCBH/2Q9ptgRkDqn10EuFri4oOhiWonXuHE1FrSYWgLXrZ0fUsVNCqmi/MuZQqHq
 VAkDh/O5CrWQH6uqXCYEQ6xfwS6dr/Ol8AQDadqTUNgZrDAgIOWdZpTuxdGhn3Eb4ItY
 xnQQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777015796; x=1777620596;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nIqnq4eOfwhh4jb251XIdAgxerQL3WDi+2J6JZvEmqM=;
 b=qBRzVRGwS0XGuSE3Kcm46P0xSPPSQ+EDfltiVbNXTDXLvSfaQKXL/GhUTz24ZoATmO
 Gkt9oYRM+eYCkRxjm52gZ4+X+2bM4fKszkV+lHLma8JTOxPEbr/AD9BhPXRYGzEFM0i5
 7cNvvm6CqSR+YdLuanlZEaLFFQLSmmAGfrvyNvn/f8OfXllYqk4bPRDFLCESAhdHIEt9
 dTY9VDSVW//nIpGhThKqgBWIwcpMfVoF/fY49WStAYV/6rAlUGHACUBq3ax5mHF/if0r
 LQCmhrB7VayiDp4v6jDxwKOgCCWRnWvj+hy+yMNWSzvzJ7qBvZcAqIb2XSjLC8n7gpAz
 WNhw==
X-Gm-Message-State: AOJu0YxcBkivoWVbSt3hG78B2gN4RcOoor4HcgZ8geGeVX/DoO/j5v80
 QzVdwvD6ft+7j9037AjkXKBBpqoFB/yAnaNKGF23kjGWt6RyXHVaUn1pPKdJEvZvl4i0x/nR1Jl
 HfLTSsDcCQKZ+FBlmNPqcrF6QYk1CC/4x4ktAzGY=
X-Gm-Gg: AeBDievrj/tKWuIghdIUu4ryI1DWuOTjb0ji6vvYob50CfF/HulR6TSGZCcI9CYjRmp
 CM0L9P0kp5cGWYrNOq6ilBqHqGdfGH6ud65iw3cfyOPSxaBitNQrFtRl32FSpEb0W5JF9VJPFKM
 45w4H1pFToJL3PK7VL+cNzPNFXPJCrauzBY1vlaD/8k6Z+6FQT2JgcwWz5tUCxCpTlvpedcr7EZ
 oRRUFB0EbJJO0WXr3pHTWWR1Qgk1V9q8Yh+9jYJR/QpDCZkg8SEX0LX77Ei/Ca4sNHpbAW3Q+QD
 SmCsbcRm1byGVl7yEXQ=
X-Received: by 2002:a2e:9a0e:0:b0:38e:d834:5ce2 with SMTP id
 38308e7fff4ca-38ed8345f72mr89805921fa.1.1777015795471; Fri, 24 Apr 2026
 00:29:55 -0700 (PDT)
MIME-Version: 1.0
From: Ricky Loh <rickyusap@gmail.com>
Date: Fri, 24 Apr 2026 00:29:43 -0700
X-Gm-Features: AQROBzCTnCBLvfhcVLVmCH2ORuRE1xKgnWxnT8hCnSP05ny9xfMF38NyCAzgpdE
Message-ID: <CA+LbT0rpokHTEagc2rCRP9tNQUtOcjj2ZF=9z_E-Q=sj1s97MQ@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: anthony.l.nguyen@intel.com
Content-Type: multipart/alternative; boundary="0000000000003fd80906502fbbd9"
X-Mailman-Approved-At: Mon, 27 Apr 2026 23:35:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777015796; x=1777620596; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=nIqnq4eOfwhh4jb251XIdAgxerQL3WDi+2J6JZvEmqM=;
 b=MhCB1G6QNzqFM9jyYt/IrPHZE+0NqzJzsrgHemwlIbmUKHhl5IQyJMFEOUSvDvJ3Nk
 lnNz0ydACSQyacRWW3ca64/jexdDc5hEeWpACIKd4XUDzc5mQJxaEPSv6g2VUCN7konN
 4pOgdrynHvkSjoTXRGBae6MNLwRwkYnpex5klYBfzK3js4XA6ds1iQmOsUI7ddr/aUkW
 hKjdr+F0rkBtAy2do/u2eTJrS6mr7bM//yzuGcPrKXrBqovNjryKNnN5GCmFqr8w2L2j
 hvq4MIumjgxnmqlhJOCm/wSafa0ISvxY4Yiz40zTeVlFszOsQQo+c2y1wM0qxsA0e4mU
 NBug==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=MhCB1G6Q
Subject: [Intel-wired-lan] igc (I226-V): TSO in bridge mode causes severe
 throughput regression;
 default ring buffer (256) causes near-complete throughput loss
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
X-Rspamd-Queue-Id: 1E00247BE0C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	DATE_IN_PAST(1.00)[88];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rickyusap@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,mail.gmail.com:mid,osuosl.org:dkim]

--0000000000003fd80906502fbbd9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm reporting two related performance issues with the igc driver
(Intel I226-V) when the interface is a member of a Linux bridge.

Hardware: Intel Ethernet Controller I226-V (rev 04), 0000:03:00.0
Firmware: 2023:889d
Kernel: 6.17.13-2-pve
Setup: igc interface =E2=86=92 Linux bridge (bridge-stp off) =E2=86=92 VM/L=
XC traffic

Baseline for comparison: Intel I219-V (e1000e) on the same bridge,
same 1GbE switch, same iperf3 target.

--- Issue 1: default ring buffer (256) + TSO =E2=86=92 ~6 Mbps ---

With the default ring buffer (RX/TX: 256) and TSO enabled, TCP
throughput collapses to ~6 Mbps. UDP is unaffected (~230 Mbps).
e1000e on the same bridge achieves ~938 Mbps.

Increasing the ring buffer to 4096 recovers throughput to ~440 Mbps.
Root cause appears to be TSO segments (up to 64KB) exhausting the
256-entry ring buffer, causing sustained drops and TCP window
starvation.

--- Issue 2: igc TSO still ~2x slower than e1000e after ring fix ---

Even with ring buffer at 4096, igc with TSO achieves only ~440 Mbps
vs e1000e's ~938 Mbps on an identical 1GbE link through the same
bridge. Disabling TSO gives ~472 Mbps, suggesting TSO introduces
additional overhead in the bridge forwarding path specific to igc.

--- Measurements (10s, 2 parallel streams, same 1GbE switch) ---

  Driver    TSO   Ring   TCP Throughput
  e1000e    on    256    938 Mbps
  igc       on    256    ~6 Mbps
  igc       on    4096   443 Mbps
  igc       off   4096   472 Mbps

--- Workaround ---

  ethtool -G <iface> rx 4096 tx 4096   # fixes Issue 1
  ethtool -K <iface> tso off           # marginal improvement for Issue 2

--- Suggested fix ---

1. Set igc default ring buffer to 4096 (hardware maximum).
2. Investigate TSO forwarding overhead when igc is a bridge member.

Thanks

---

--0000000000003fd80906502fbbd9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I&#39;m reporting two related performance issue=
s with the igc driver<br>(Intel I226-V) when the interface is a member of a=
 Linux bridge.<br><br>Hardware: Intel Ethernet Controller I226-V (rev 04), =
0000:03:00.0<br>Firmware: 2023:889d<br>Kernel: 6.17.13-2-pve<br>Setup: igc =
interface =E2=86=92 Linux bridge (bridge-stp off) =E2=86=92 VM/LXC traffic<=
br><br>Baseline for comparison: Intel I219-V (e1000e) on the same bridge,<b=
r>same 1GbE switch, same iperf3 target.<br><br>--- Issue 1: default ring bu=
ffer (256) + TSO =E2=86=92 ~6 Mbps ---<br><br>With the default ring buffer =
(RX/TX: 256) and TSO enabled, TCP<br>throughput collapses to ~6 Mbps. UDP i=
s unaffected (~230 Mbps).<br>e1000e on the same bridge achieves ~938 Mbps.<=
br><br>Increasing the ring buffer to 4096 recovers throughput to ~440 Mbps.=
<br>Root cause appears to be TSO segments (up to 64KB) exhausting the<br>25=
6-entry ring buffer, causing sustained drops and TCP window<br>starvation.<=
br><br>--- Issue 2: igc TSO still ~2x slower than e1000e after ring fix ---=
<br><br>Even with ring buffer at 4096, igc with TSO achieves only ~440 Mbps=
<br>vs e1000e&#39;s ~938 Mbps on an identical 1GbE link through the same<br=
>bridge. Disabling TSO gives ~472 Mbps, suggesting TSO introduces<br>additi=
onal overhead in the bridge forwarding path specific to igc.<br><br>--- Mea=
surements (10s, 2 parallel streams, same 1GbE switch) ---<br><br>=C2=A0 Dri=
ver =C2=A0 =C2=A0TSO =C2=A0 Ring =C2=A0 TCP Throughput<br>=C2=A0 e1000e =C2=
=A0 =C2=A0on =C2=A0 =C2=A0256 =C2=A0 =C2=A0938 Mbps<br>=C2=A0 igc =C2=A0 =
=C2=A0 =C2=A0 on =C2=A0 =C2=A0256 =C2=A0 =C2=A0~6 Mbps<br>=C2=A0 igc =C2=A0=
 =C2=A0 =C2=A0 on =C2=A0 =C2=A04096 =C2=A0 443 Mbps<br>=C2=A0 igc =C2=A0 =
=C2=A0 =C2=A0 off =C2=A0 4096 =C2=A0 472 Mbps<br><br>--- Workaround ---<br>=
<br>=C2=A0 ethtool -G &lt;iface&gt; rx 4096 tx 4096 =C2=A0 # fixes Issue 1<=
br>=C2=A0 ethtool -K &lt;iface&gt; tso off =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 # marginal improvement for Issue 2<br><br>--- Suggested fix ---<br><br>=
1. Set igc default ring buffer to 4096 (hardware maximum).<br>2. Investigat=
e TSO forwarding overhead when igc is a bridge member.<br><br>Thanks<br><br=
>---</div>

--0000000000003fd80906502fbbd9--
