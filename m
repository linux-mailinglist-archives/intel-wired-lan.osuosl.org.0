Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Ky3Ecu2pWkiFQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 17:11:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CC11DC757
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 17:11:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 754384096B;
	Mon,  2 Mar 2026 16:11:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jmka6wvWxwkZ; Mon,  2 Mar 2026 16:11:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4562408F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772467911;
	bh=NyluPCHT90VZ2IGr8H87MLzDkTcha73dsX9pgK3w8t4=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=f/mk2Mxf6OjFIjJbEyNqNbmAftPY7NGjKsDIcV5DGLTHZDaA71VjvqqGWW56KLOBk
	 NbOiifsy7sbQce3Hp5K3jrFxW/7BJZwXJLKw9eKDf/hWQnsBN5NVzrHz7N7PgoF+oA
	 +QLBJvD0JcWUstKNk3l4tue2hpTVFyvkA09kugvpIF5WkWuhrpF//8GsPkx8qdUo+W
	 VOIJVZEddH0RZHO/6SZ5m05uWzF8s5jRDB2gcUZ+xBq0TY51k634QDCyBFhcdY3mbI
	 QNy3/0IfeSVgLrEG0llFjQWccS93GVxpyMpHITWPP6P+PYjCdHXE0ScXEPAQeNffzn
	 73AX/s9ucWC5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4562408F8;
	Mon,  2 Mar 2026 16:11:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B14B1F3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Feb 2026 00:08:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1881A83B98
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Feb 2026 00:08:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Sz0V0ZNQxwK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Feb 2026 00:08:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1232; helo=mail-dl1-x1232.google.com;
 envelope-from=mromanus@lbl.gov; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E923C83B91
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E923C83B91
Received: from mail-dl1-x1232.google.com (mail-dl1-x1232.google.com
 [IPv6:2607:f8b0:4864:20::1232])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E923C83B91
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Feb 2026 00:08:16 +0000 (UTC)
Received: by mail-dl1-x1232.google.com with SMTP id
 a92af1059eb24-124b07e5fe4so124424c88.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 16:08:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772237296; cv=none;
 d=google.com; s=arc-20240605;
 b=aMJRPvyobCBQWqat5mOB83TggU6eLjx/mSHIQwLlx/51hZSNrvOjy7L2K7wo1f038R
 bt0gEHHonwFixG9nuqhV+PujV0WC20lHgFoFYT3F26lWn3+AdIL9WgGiKYkCATfhilA0
 jrWfw29YWTWcr0Wq1bIUdsW95FxE4MloQYP/c6e5z7wx8pz8IvcmERRk4KozJbT7Z9Mp
 jbaqzJ5mZ+4hYF6e56N5AtBfFmBHwcDf0hW+KBphxU7v8C+uQ0XCEj07XhWmnsl0slVV
 R8jN9B7a6QT1RiNciaoXs6wMUo8FpwmFGwHAMKwtI5R+Dkz+0ABuK9GDHyagtVt12GXG
 HWzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=NyluPCHT90VZ2IGr8H87MLzDkTcha73dsX9pgK3w8t4=;
 fh=OV+FvphG9Gv01U4LLMUoeG8BPF8PErMQVey8EXSevNM=;
 b=Qqekthp3AzMS4LxFfvHFJjZ/LkSGyb2Uw2lsnkifK+4C4I7y7KR893BHn06iNFPv6N
 PxO65sDmSuBlnr1AeRQUsBVEAeTrbh7O7hYU1kU7uC5EKB0kgyqrvGHAjaqpueXYYw2N
 FDEDcFehRUMMzrsI/H0AgsxkZ4x5ErHXXiKYMnWjI4CQOFxt8A6qXJDM162ao52Ozr5Z
 OlzZnNYYj9mjiBaOnQIC22o8aW9dfVx92GoSvIATQ9UhBOtVSjdWK1HZCpcXLCFc3BqB
 sORIe9pVz0WYTRO9e4w2L0UuEAkL9lb0ExL8a2+piuuCien3Hr2G3OF7linhaMfuRPYQ
 SygQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772237296; x=1772842096;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NyluPCHT90VZ2IGr8H87MLzDkTcha73dsX9pgK3w8t4=;
 b=LhSFfKSxIj0tclP9wavcQ+jopstn2VxzTsYcxcOx7I/YndEuTtJPeS8WgkVWKYdvEq
 nrixGIrDlKWtf9opTzRB9Q1OSk0mBANkjCz2cgl8dY7kNz+ReP9198/Sa0oRf8EJ1jM6
 wg1D/wM4+VAIJbqr0CHr8+5YkkO5RDlqUads9suK+4xyz2jNouvmydm0FPjS7ZQP46X7
 SlXj4xUsR2vR9jQ4NuoUaufN+aWy++2LeYsOJxf6lIi4n7v9ONuESRnqCyiD1r32fnCB
 s8hRn3W2IiUjpwGr+rrokejeu8XORPeqckq3AB621sjo/SIGeOi8jjb5/sF5anlck3To
 5Xyg==
X-Gm-Message-State: AOJu0Yxc1K+DvJPesYxiwV6cFYHs/JHW2Ywd1pN0Mz/euvyaiEcu8Eyw
 ZyVXFoT288gDsl5tvgR7FFbZRrBI+2m8H9ZB/sJ0OI4qyX3GILEVpZhVX8ArABv9GeHp/sIysSH
 /T2giKfI65WbkVUHgnOZVzj0KYiP9IVx3R77cdTKTLwqfBlZ+TDmdJu+3d2Q/5+61rpMNC3s+6u
 b9GnnfFOoIKSq4jn8pViWjzljceifLPQ+7KkA3GXUjWR08T/1545+Ih7G9Z5f19euyzrNwf0AET
 hY3nOsWOHdtTBPhvs6yVrKyop2mBJzGwr7qbcsdyrmhnfa+V5ONQqNv8bT/f1T4
X-Gm-Gg: ATEYQzwQBnVcO3qOhOJZCsEqgLpzTHK5b5gET8JzQYKgEUUNSimDl8qeOKR04QZiViX
 r+vq0dzTzhotfBBwSuma8KIgObmcGzVz38Q7RIyTn2UhOw5b382Oc8qYMv/BQTsF1LG0uq03RfL
 BQohRe8WScXHqUdS4nQgMYsZv/uIKwedRQp2GvW7SUzXdgHMM3SF+aXamFW/DcZa13/ZC6xAoyr
 bljSJ1gb+6ntlIpjBH/2W/uHBZFjS7pK7F6affIi/CWhiw6kgm/glgMh06L0chzROzgbmtHydW5
 Wdedaed11BcuZooPOds2FPi3MIgTLZMnAKccTA==
X-Received: by 2002:a05:693c:3018:b0:2bd:d404:e018 with SMTP id
 5a478bee46e88-2bde1e92b77mr950673eec.8.1772237295288; Fri, 27 Feb 2026
 16:08:15 -0800 (PST)
MIME-Version: 1.0
From: Melissa Romanus <MRomanus@lbl.gov>
Date: Fri, 27 Feb 2026 16:08:04 -0800
X-Gm-Features: AaiRm52gIDz6ZnDB1h0RliQoKZuWyOIqsPdoS7SkOncXyCLXvyV8H5YOF_tSIpw
Message-ID: <CA+MmCVf4nw=0iFNw1vCT3SU_n27tRJByh_BgHiEcBXroESeDCg@mail.gmail.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: multipart/alternative; boundary="00000000000071b01c064bd7260c"
X-Mailman-Approved-At: Mon, 02 Mar 2026 16:11:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lbl.gov; s=google; t=1772237296; x=1772842096; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=NyluPCHT90VZ2IGr8H87MLzDkTcha73dsX9pgK3w8t4=;
 b=J1f5+pOkmqss/jDiJKz8tilBRue7lZgqUye9gtCY5upjN67uPN2D+Pm2F4CqbHSYXH
 yFiHAJp2d/2MAgYWiDX1qaKE9mu42X8jbZdA7c3lbi+zQcOlRmf2WKU2wML9+A4i5H/o
 R+ak9CF15B99QgZ/X2GVlwPQkmifvPySTQHgw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lbl.gov
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lbl.gov header.i=@lbl.gov header.a=rsa-sha256
 header.s=google header.b=J1f5+pOk
Subject: [Intel-wired-lan] ixgbe/X550: kernel NULL pointer dereference
 following "Malicious event on VF" after upgrade to 6.17.7
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
X-Rspamd-Queue-Id: 82CC11DC757
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[64];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lbl.gov : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,mail.gmail.com:mid,osuosl.org:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[MRomanus@lbl.gov,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[MRomanus@lbl.gov,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

--00000000000071b01c064bd7260c
Content-Type: text/plain; charset="UTF-8"

Hi netdev,

After a recent Fedora CoreOS upgrade at the beginning of February, we are
experiencing several kernel crashes on multiple nodes of the same style
hardware, which are pointing to an issue with the ixgbe driver.

The affected nodes reboot following a kernel NULL pointer dereference
immediately after an ixgbe "Malicious event on VF" message.

Feb 27 21:34:34 d8-r11-c8-n3 kernel: ixgbe 0000:21:00.0: Malicious event on
VF 3 tx:80000 rx:0
Feb 27 21:34:34 d8-r11-c8-n3 kernel: BUG: kernel NULL pointer dereference,
address: 0000000000000304

Different node in another chassis (identical hardware):

Feb 13 10:42:49 d8-r11-c9-n2 kernel: ixgbe 0000:21:00.0: Malicious event on
VF 12 tx:80000 rx:0
Feb 13 10:42:49 d8-r11-c9-n2 kernel: BUG: kernel NULL pointer dereference,
address: 0000000000000b2c

This has occurred on at least five separate nodes since our FCOS upgrade
maintenance on February 3. After reboot, nodes return to normal operation
until the next occurrence. Currently for each of these systems, the journal
always truncates after the BUG line. I will increase the panic delay and
capture settings and update if we happen to catch a more meaningful trace
before the reboot triggers.

Here's some relevant info pertaining to our environment:

- Linux kernel: 6.17.7-300.fc43.x86_64
- OS: Fedora CoreOS 43.20251110.3.1

Hardware Info:

- Gigabyte MZ62-HD0 nodes (H262-Z62 chassis) -- happening across multiple
nodes in multiple chassis in the stack (i.e., not isolated to a single
chassis)
- CPU is AMD EPYC 7302
- The NIC causing issues is: Intel X550 (rev 01) dual-port 10GBASE-T
-- Bonded interfaces (802.3ad) to redundant leaf switches

Driver/mod Info:

- driver: ixgbe
- version: 6.17.7-300.fc43.x86_64
- firmware-version: 0x80000c67, 1.1276.0

From the modinfo:
- filename:
/lib/modules/6.17.7-300.fc43.x86_64/kernel/drivers/net/ethernet/intel/ixgbe/ixgbe.ko.xz
- description:    Intel(R) 10 Gigabit PCI Express Network Driver
- rhelversion:    10.99

The SR-IOV capability is present on the X550 adapter, however no VFs are
configured:

/sys/class/net/enp33s0f0/device/sriov_numvfs = 0

/sys/module/ixgbe/parameters/ has only allow_unsupported_sfp = N

Also, no VF PCI devices appear in lspci output.

In checking the priv flags, I noticed there's one for mdd-disable-vf. I can
try to set mdd-disable-vf to on after sending to see if that helps as a
potential mitigation, but the nondeterministic nature of this issue means
it will take some time for us to know whether this change restores
stability:

Private flags for enp33s0f0:
- legacy-rx     : off
- vf-ipsec      : off
- mdd-disable-vf: off

I'm wondering if this is a known issue in recent kernels affecting
ixgbe/X550 devices when MDD events are triggered without SR-IOV VFs
configured? I could not find anything recent in my searches, so I thought I
would reach out to report the behavior and see if there's anything I might
be missing.

Thanks for your time,

Melissa

--00000000000071b01c064bd7260c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi netdev,</div><div><br></div>After a rece=
nt Fedora CoreOS upgrade at the beginning of February, we are experiencing =
several kernel crashes on multiple nodes of the same style hardware, which =
are pointing to an issue with the ixgbe driver.<br><br>The affected nodes r=
eboot following a kernel NULL pointer dereference immediately after an ixgb=
e &quot;Malicious event on VF&quot; message.<br><br>Feb 27 21:34:34 d8-r11-=
c8-n3 kernel: ixgbe 0000:21:00.0: Malicious event on VF 3 tx:80000 rx:0<br>=
Feb 27 21:34:34 d8-r11-c8-n3 kernel: BUG: kernel NULL pointer dereference, =
address: 0000000000000304<br><br>Different node in another chassis (identic=
al hardware):<br><br>Feb 13 10:42:49 d8-r11-c9-n2 kernel: ixgbe 0000:21:00.=
0: Malicious event on VF 12 tx:80000 rx:0<br>Feb 13 10:42:49 d8-r11-c9-n2 k=
ernel: BUG: kernel NULL pointer dereference, address: 0000000000000b2c<br><=
br>This has occurred on at least five separate nodes since our FCOS upgrade=
 maintenance on February 3. After reboot, nodes return to normal operation =
until the next occurrence. Currently for each of these systems, the journal=
 always truncates after the BUG line. I will increase the panic delay and c=
apture settings and update if we happen to catch a more meaningful trace be=
fore the reboot triggers.<br><br>Here&#39;s some relevant info pertaining t=
o our environment:<br><br>- Linux kernel: 6.17.7-300.fc43.x86_64<br>- OS: F=
edora CoreOS 43.20251110.3.1<br><br>Hardware Info:<br><br>- Gigabyte MZ62-H=
D0 nodes (H262-Z62 chassis) -- happening across multiple nodes in multiple =
chassis in the stack (i.e., not isolated to a single chassis)<br>- CPU is A=
MD EPYC 7302<br>- The NIC causing issues is: Intel X550 (rev 01) dual-port =
10GBASE-T<br>-- Bonded interfaces (802.3ad) to redundant leaf switches<br><=
br>Driver/mod Info:<br><br>- driver: ixgbe<br>- version: 6.17.7-300.fc43.x8=
6_64<br>- firmware-version: 0x80000c67, 1.1276.0<br><br>From the modinfo:<b=
r>- filename: =C2=A0 =C2=A0 =C2=A0 /lib/modules/6.17.7-300.fc43.x86_64/kern=
el/drivers/net/ethernet/intel/ixgbe/ixgbe.ko.xz<br>- description: =C2=A0 =
=C2=A0Intel(R) 10 Gigabit PCI Express Network Driver<br>- rhelversion: =C2=
=A0 =C2=A010.99<br><br>The SR-IOV capability is present on the X550 adapter=
, however no VFs are configured:<br><br></div><div>/sys/class/net/enp33s0f0=
/device/sriov_numvfs =3D 0</div><div><br></div><div>/sys/module/ixgbe/param=
eters/ has only allow_unsupported_sfp =3D N</div><div><br>Also, no VF PCI d=
evices appear in lspci output.<br><br>In checking the priv flags, I noticed=
 there&#39;s one for mdd-disable-vf. I can try to set mdd-disable-vf to on =
after sending to see if that helps as a potential mitigation, but the nonde=
terministic nature of this issue means it will take some time for us to kno=
w whether this change restores stability:<br><br>Private flags for enp33s0f=
0:<br>- legacy-rx =C2=A0 =C2=A0 : off<br>- vf-ipsec =C2=A0 =C2=A0 =C2=A0: o=
ff<br>- mdd-disable-vf: off<br><br>I&#39;m wondering if this is a known iss=
ue in recent kernels affecting ixgbe/X550 devices when MDD events are trigg=
ered without SR-IOV VFs configured? I could not find anything recent in my =
searches, so I thought I would reach out to report the behavior and see if =
there&#39;s anything I might be missing.</div><div><br>Thanks for your time=
,</div><div><br><div>Melissa</div></div></div></div>

--00000000000071b01c064bd7260c--
