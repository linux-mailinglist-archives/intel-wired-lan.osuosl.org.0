Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHdnOceA3WldfAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 01:48:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C663F44D5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 01:48:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD28D61B45;
	Mon, 13 Apr 2026 23:48:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PfMgd1Zs-3RG; Mon, 13 Apr 2026 23:48:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5181061B46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776124100;
	bh=q/9ULgUjNY9+Rf83w/yyfx6eMJh9uEvJP55t7um3W8I=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gmb+iRyFYLbDSFBIiXHt7XaCXcEzqXZ9cffuJnO/Ia8/I6Y/BDGGRSgUSxnMv+5pe
	 /izBNX7U3ReeUkmk87tCM4nCtuzk/g+Qhj0FR0yThlgVTrbSupEkb6IiL5wNuI6NbH
	 ISfTkcVqoQfXyADTgulbn4ioYo9Iq+TCoHcawiM04F9W0MKWf7v0drbFMKxQfkC8Q8
	 JfPuqiF2T7sstWGLAUQvFbX3ov3irzSC+iWnFBuS0tUj6x+gQ8NBWP1q8QgB37wfvg
	 Nj3YvvQC72huJHaWTYhIfaV5HemCSlXSQkxIdZLO+maN43g8jl8K6svR3wpQh6O0PV
	 2fW/Itvn8sGTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5181061B46;
	Mon, 13 Apr 2026 23:48:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E1070194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:01:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C6E0940F69
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:01:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U0s_tN1Tcrt0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 14:01:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::132; helo=mail-lf1-x132.google.com;
 envelope-from=tim.w.connors@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 17D5340E64
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17D5340E64
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 17D5340E64
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:01:46 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id
 2adb3069b0e04-5a3e66f849dso4167847e87.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 07:01:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776088905; cv=none;
 d=google.com; s=arc-20240605;
 b=X7qAdiBTXlBOytA1OyznZCtxToEFqzq/YSB6HNrtga0g4pOkg1V/5kl26sbI6akEvY
 DPD7n65UimDk80yQ5hg6WCzBk22S6gZnQu2wAUwH17URqdw+cyl/tN4vfDoAzWI0K4lG
 1zRr3TAsc937Ctdb4t40VJcP8Q0rj7mHRvvcGykj4R5WPhBR1qDruZ2k9w7fEdu/0nS8
 EvjtaYkkibzk76ZGmEs6atAW6WhCIEXCHKUFfSkOMDM409Djj/gh03NnPpKFxi6Nctc4
 ZqEwpWrJ59BgRrJsf6/lNoUwgoiSS1d2n8YrF2yOo/vqiadfcWoexGfh76rmsBcil8wq
 B8xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=q/9ULgUjNY9+Rf83w/yyfx6eMJh9uEvJP55t7um3W8I=;
 fh=TQ8q1SCc0fJSNpJmF5YGC+apxG9zT36xA/J5uWZFvqI=;
 b=DDi0V6CHIoM3X0z6hMsZReOBRB5BBQ+3rGD1Mq+EMmVsTEgf4Q53laTg9DynuWhFRS
 geLMvFUDcz+GL8jUJ1wdxTEey7efmqIebgPzBXXw4y4XpPz27cJedDPmzMO3u68/IBK4
 giHUV+2ywBjoRFJFmd84yLJNSa+Jz5hQmvNSP8vo0cJHwFImiobM5su2M9dQe/Hv+IBL
 Q/9l8Yg4sulc1FtkSRKiYVejDdeL6utYiRQYRctCckfQXTWfy+QXH0x7pSYMcQY5Lf87
 4dNHFCtxhhZDsnSpFnsnzET/U8Xa61FarR+gg7WrY0Ic3qG1VLgvzyxwSjLE8Lae3T9/
 1yVA==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776088905; x=1776693705;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=q/9ULgUjNY9+Rf83w/yyfx6eMJh9uEvJP55t7um3W8I=;
 b=XEflD3x64CgHyE1sFbaEIRvlJd8Xoff1fIRsPUcNtkBZ1bDxYadUs1hXBJDsV0q/oM
 TdZSiOsJ2yEZeKvf2OBgd6TJv8xYJtgxUs0FwLC47mbYQFhiJpDdFHeiOE2QHCUV+TbZ
 1Jv6uQ5ujxdlm5+Wg5WHsw8ICy33Aa45wpnMlVW7q5A07jdpQFs+uo06D5H6kaDBJspP
 HpKjLlcj+K+VPGuwQIVKiwynD7yvcBZlePLSbBUNkrjcFtVFZTWSrOUQfdfnZA+DnZ6T
 esXShD7x+q/SofQEXB/UTjglnxaj2fNLe1kHW+kF+DlhOGRhnVQCjgxU9kwiSmbWhsRR
 d1iA==
X-Forwarded-Encrypted: i=1;
 AFNElJ+yPJNqdak4CVpYYnFLeeVRtLXevNVbXOk+F213/1juU4uVU63EFtZlMXKyh7t/wamuIpOYc6jyXtLRvpaoL1k=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyGreAB3q5nQLLcDMJKb/rIa+5pFE5fY2VSWskIJk/v/aX/NdZJ
 pjq4QXUplN0JeAXuL3WM3tUBkfrtUie7GgOS9mRLlmkXozEl2ITqXUO4Mt4y4uwuoxKXawI5s2R
 8yv96wlBR4TJV/hL6Xt9tc8huW7Zqf0M=
X-Gm-Gg: AeBDiesQUhNdnpUsRZ1W5IXeYMin3ePFhVdTV6YBc7t+ucXFmSrd8oCpldzq0mzUuRK
 QsPyNeh5aRvDm10P2R/UkKQTNQrt/QL7p2pkfnGL/jwjSgi8MYIrkpB4FDlm4E0fXP2ZZhtQv2Z
 C4Twl2GAKGZTqv5dSN4hKHwvjIAUmN+n25ipg3y7bwQh+p0E7yLoTIbOs4XoikaBaIW16C7I7A2
 RM0bwWhZplltlvtsF3xeGA/BcQ30zjd3rr2LItiFWg7VLkK/4S2wQFn0qS7YrB4jyncDrqnbnZr
 xZPyvz3O
X-Received: by 2002:a05:6512:318e:b0:5a2:b370:f796 with SMTP id
 2adb3069b0e04-5a3e7ca7c3emr5606816e87.10.1776088903611; Mon, 13 Apr 2026
 07:01:43 -0700 (PDT)
MIME-Version: 1.0
From: Tim Connors <tim.w.connors@gmail.com>
Date: Tue, 14 Apr 2026 00:01:29 +1000
X-Gm-Features: AQROBzBL-sC4QJEL5N_x9JPPCKzfkQqSR_1ZCzcxqyZTPfFMABTRtxoy1CSG7Y8
Message-ID: <CAOrPOqzDHuZBRdpnJ34u-FQ27p55QYrPA-6Jz0dJey7JRDSs0g@mail.gmail.com>
To: 1104670@bugs.debian.org
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Hutchings,
 Ben" <ben@decadent.org.uk>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 linux-pci <linux-pci@vger.kernel.org>, 
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Michael Chan <mchan@broadcom.com>, 
 Laurent Bonnaud <L.Bonnaud@laposte.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: multipart/alternative; boundary="000000000000307a0f064f57ecf3"
X-Mailman-Approved-At: Mon, 13 Apr 2026 23:48:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776088905; x=1776693705; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=q/9ULgUjNY9+Rf83w/yyfx6eMJh9uEvJP55t7um3W8I=;
 b=I1RLuSuIx9Gz2cR81oiy39MiOviFZ1V803H2sc1lP9ja3O7ptfeOidIA6qoXksKzKQ
 jycK4tYWv7jHoVHuM0a/JCK/+MDBnnVcYcIwaFeysuA9ZDclw3B1/aFPtgR0AUkIyjh4
 HmazHUUVHRB+y5qFvb3XT4zICw4/uwRQaRaWAKQ0awg0xMqWwt1DAh0e6e9pLEg1cxrh
 eUMrcAPaw3jLsOYHyi5uFFEAPm5vpDsT1IxwzzSM6FrGcgqg81vuMmre/wV71mD9S3Uc
 81DsIwYXsrJavm5tfyph0yKtVvKZ8G0ROMQC0RmEjKAcsMhA72KMQRgwgwtVjy20Jxh2
 75Sg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=I1RLuSuI
Subject: Re: [Intel-wired-lan] Bug#1104670: linux-image-6.12.25-amd64:
 system does not shut down - GHES: Fatal hardware error
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
X-Spamd-Result: default: False [2.29 / 15.00];
	URI_COUNT_ODD(1.00)[9];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	FAKE_REPLY(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:1104670@bugs.debian.org,m:aleksandr.loktionov@intel.com,m:ben@decadent.org.uk,m:linux-pci@vger.kernel.org,m:pavan.chebbi@broadcom.com,m:mchan@broadcom.com,m:L.Bonnaud@laposte.net,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,mail.gmail.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[timwconnors@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,decadent.org.uk,lists.osuosl.org,vger.kernel.org,broadcom.com,laposte.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.566];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[timwconnors@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 42C663F44D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--000000000000307a0f064f57ecf3
Content-Type: text/plain; charset="UTF-8"

On Mon, 14 Jul 2025 09:21:25 +0000 "Loktionov, Aleksandr" <
aleksandr.loktionov@intel.com> wrote:
> > On Sun, 2025-05-04 at 13:45 +0200, Laurent Bonnaud wrote:
> > [...]
> > >   - Previously the kernel would output an error in
> > /var/lib/systemd/pstore/ but would shutdown anyway.
> > >
> > >   - Now, with kernel 6.1.135-1, the shutdown is blocked as with
> > 6.12.x kernels (see below).
> > > <30>[  961.098671] systemd-shutdown[1]: Rebooting.
> > > <6>[  961.098743] kvm: exiting hardware virtualization <6>[
> > > 961.361878] megaraid_sas 0000:17:00.0: megasas_disable_intr_fusion
> > is
> > > called outbound_intr_mask:0x40000009 <6>[  961.414526] ACPI: PM:
> > > Preparing to enter system sleep state S5 <0>[  963.828210]
> > > {1}[Hardware Error]: Hardware error from APEI Generic Hardware Error
> > > Source: 5 <0>[  963.828213] {1}[Hardware Error]: event severity:
> > fatal <0>[  963.828214] {1}[Hardware Error]:  Error 0, type: fatal
> > > <0>[  963.828216] {1}[Hardware Error]:   section_type: PCIe error
> > > <0>[  963.828216] {1}[Hardware Error]:   port_type: 0, PCIe end
> > point
> > > <0>[  963.828217] {1}[Hardware Error]:   version: 3.0
> > > <0>[  963.828218] {1}[Hardware Error]:   command: 0x0002, status:
> > 0x0010
> > > <0>[  963.828220] {1}[Hardware Error]:   device_id: 0000:01:00.1
> > > <0>[  963.828221] {1}[Hardware Error]:   slot: 6
>>> <0>[  963.828222] {1}[Hardware Error]:   secondary_bus: 0x00
>>> <0>[  963.828223] {1}[Hardware Error]:   vendor_id: 0x8086,
>> device_id: 0x1563
>>> <0>[  963.828224] {1}[Hardware Error]:   class_code: 020000
>>> <0>[  963.828225] {1}[Hardware Error]:   aer_uncor_status:
>> 0x00100000, aer_uncor_mask: 0x00018000
>>> <0>[  963.828226] {1}[Hardware Error]:   aer_uncor_severity:
>> 0x000ef010
>>> <0>[  963.828227] {1}[Hardware Error]:   TLP Header: 40000001
>> 0000000f 90028090 00000000
>> [...]
>>
>> It seems that this is a known bug in the BIOS of several Dell
>> PowerEdge models including (in this case) the R540.

Yup, R730XD here.

>> A workaround was added to the tg3 driver
>> <https://git.kernel.org/linus/e0efe83ed325277bb70f9435d4d9fc70bebdcca8
>>
>> and a similar change was proposed (but not accepted) in the i40e
>> driver <https://lore.kernel.org/all/20241227035459.90602-1-
>> yue.zhao@shopee.com/>.
>> On tihis system the erorr log points to a deivce handled by the ixgbe
>> driver, and no workaround has been implemented for that.
>>
>> Since this issue seems to affect multiple different NIC vendors and
>> drivers, would it make more sense to implement this workaround as a
>> PCI quirk?

It's not just network devices either.

<5>[965917.449277] sd 4:0:0:0: [sda] Synchronizing SCSI cache
<6>[965917.614364] [drm] PCIE GART of 256M enabled (table at
0x000000F47FF80000).
<6>[965917.820364] [drm] UVD and UVD ENC initialized successfully.
<6>[965917.921559] [drm] VCE initialized successfully.
<6>[965917.926574] amdgpu 0000:04:00.0: [drm] Cannot find any crtc or sizes
<6>[965917.934684] amdgpu 0000:04:00.0: [drm] Cannot find any crtc or sizes
<0>[965919.725575] {1}[Hardware Error]: Hardware error from APEI Generic
Hardware Error Source: 3
<0>[965919.725582] {1}[Hardware Error]: event severity: fatal
<0>[965919.725587] {1}[Hardware Error]:  Error 0, type: fatal
<0>[965919.725591] {1}[Hardware Error]:   section_type: PCIe error
<0>[965919.725595] {1}[Hardware Error]:   port_type: 1, legacy PCI end point
<0>[965919.725598] {1}[Hardware Error]:   version: 1.16
<0>[965919.725602] {1}[Hardware Error]:   command: 0x0407, status: 0x0010
<0>[965919.725607] {1}[Hardware Error]:   device_id: 0000:04:00.1
<0>[965919.725611] {1}[Hardware Error]:   slot: 0
<0>[965919.725614] {1}[Hardware Error]:   secondary_bus: 0x00
<0>[965919.725617] {1}[Hardware Error]:   vendor_id: 0x1002, device_id:
0xaae0
<0>[965919.725622] {1}[Hardware Error]:   class_code: 040300
<0>[965919.725625] {1}[Hardware Error]:   aer_cor_status: 0x00002000,
aer_cor_mask: 0x000031c0
<0>[965919.725630] {1}[Hardware Error]:   aer_uncor_status: 0x00100000,
aer_uncor_mask: 0x00010000
<0>[965919.725635] {1}[Hardware Error]:   aer_uncor_severity: 0x004e7030
<0>[965919.725638] {1}[Hardware Error]:   TLP Header: 40008001 00000a0f
96a121a0 00000000
<0>[965919.725646] GHES: Fatal hardware error but panic disabled
<0>[965919.725650] Kernel panic - not syncing: GHES: Fatal hardware error
<4>[965919.725662] CPU: 0 UID: 0 PID: 0 Comm: swapper/0 Tainted: P
  O       6.14.11-5-bpo12-pve #1
<4>[965919.725676] Tainted: [P]=PROPRIETARY_MODULE, [O]=OOT_MODULE
<4>[965919.725689] Hardware name: Dell Inc. PowerEdge R730xd/072T6D, BIOS
2.19.0 12/12/2023
<4>[965919.725694] Call Trace:
<4>[965919.725700]  <NMI>
<4>[965919.725706]  dump_stack_lvl+0x27/0xa0
<4>[965919.725722]  dump_stack+0x10/0x20
<4>[965919.725729]  panic+0x358/0x3b0
<4>[965919.725742]  __ghes_panic+0x60/0x80
<4>[965919.725756]  ghes_notify_nmi+0x1d5/0x380
<4>[965919.725768]  nmi_handle.part.0+0x58/0x160
<4>[965919.725781]  default_do_nmi+0x131/0x170
<4>[965919.725792]  exc_nmi+0x1c4/0x290
<4>[965919.725799]  end_repeat_nmi+0xf/0x53
<4>[965919.725816] RIP: 0010:intel_idle+0x51/0x90
<4>[965919.725824] Code: 2d 80 ca 2b 00 eb 52 cc cc cc 48 89 f0 0f 1f 00 31
d2 48 89 d1 0f 01 c8 48 8b 06 a8 08 75 0b b9 01 00 00 00 4c 89 c0 0f 01 c9
<f0> 80 66 02 df f0 83 44 24 fc 00 48 8b 06 a8 08 74 0b 65 81 25 ea
<4>[965919.725830] RSP: 0018:ffffffff8ec03db0 EFLAGS: 00000046
<4>[965919.725837] RAX: 0000000000000020 RBX: ffff8aa2ffa44680 RCX:
0000000000000001
<4>[965919.725841] RDX: 0000000000000000 RSI: ffffffff8ec107c0 RDI:
0000000000000004
<4>[965919.725849] RBP: ffffffff8ec03df0 R08: 0000000000000020 R09:
0000000000000000
<4>[965919.725854] R10: 0000000000000000 R11: 0000000000000000 R12:
0000000000000004
<4>[965919.725857] R13: ffffffff8ee86960 R14: ffffffff8ee86b18 R15:
0000000000000004
<4>[965919.725866]  ? intel_idle+0x51/0x90
<4>[965919.725873]  ? intel_idle+0x51/0x90
<4>[965919.725879]  </NMI>
<4>[965919.725882]  <TASK>
<4>[965919.725884]  ? cpuidle_enter_state+0x85/0x450
<4>[965919.725895]  cpuidle_enter+0x2e/0x50
<4>[965919.725908]  call_cpuidle+0x22/0x60
<4>[965919.725918]  do_idle+0x1de/0x240
<4>[965919.725925]  cpu_startup_entry+0x29/0x30
<4>[965919.725930]  rest_init+0xd0/0xd0
<4>[965919.725934]  start_kernel+0x779/0xb60
<4>[965919.725941]  ? load_ucode_intel_bsp+0x43/0xa0
<4>[965919.725952]  x86_64_start_reservations+0x18/0x30
<4>[965919.725961]  x86_64_start_kernel+0xbf/0x110
<4>[965919.725968]  common_startup_64+0x13e/0x141
<4>[965919.725980]  </TASK>
<0>[965919.726136] Kernel Offset: 0xb600000 from 0xffffffff81000000
(relocation range: 0xffffffff80000000-0xffffffffbfffffff)


04:00.0 VGA compatible controller: Advanced Micro Devices, Inc. [AMD/ATI]
Lexa PRO [Radeon 540/540X/550/550X / RX 540X/550/550X] (rev c7) (prog-if 00
[VGA controller])
        Subsystem: Advanced Micro Devices, Inc. [AMD/ATI] Lexa PRO [Radeon
540/540X/550/550X / RX 540X/550/550X]
        Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0
        Interrupt: pin A routed to IRQ 174
        NUMA node: 0
        IOMMU group: 29
        Region 0: Memory at 38000000000 (64-bit, prefetchable) [size=2G]
        Region 2: Memory at 38080000000 (64-bit, prefetchable) [size=2M]
        Region 4: I/O ports at 2000 [size=256]
        Region 5: Memory at 96a00000 (32-bit, non-prefetchable) [size=256K]
        Expansion ROM at 96a60000 [disabled] [size=128K]
        Capabilities: <access denied>
        Kernel driver in use: amdgpu
        Kernel modules: amdgpu

04:00.1 Audio device: Advanced Micro Devices, Inc. [AMD/ATI] Baffin HDMI/DP
Audio [Radeon RX 550 640SP / RX 560/560X]
        Subsystem: Advanced Micro Devices, Inc. [AMD/ATI] Baffin HDMI/DP
Audio [Radeon RX 550 640SP / RX 560/560X]
        Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0
        Interrupt: pin B routed to IRQ 172
        NUMA node: 0
        IOMMU group: 30
        Region 0: Memory at 96a40000 (64-bit, non-prefetchable) [size=16K]
        Capabilities: <access denied>
        Kernel driver in use: snd_hda_intel
        Kernel modules: snd_hda_intel

Was completely idle and unused all boot session, and reboot was routine
after patching. kernel 6.14.11-5-bpo12 from proxmox backports (so ubuntu
backports, essentially).

> I support the idea of PCI workaround, but who will implement it ?

--000000000000307a0f064f57ecf3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Mon, 14 Jul 2025 09:21:25 +0000 &quot;Loktionov, Aleksa=
ndr&quot; &lt;<a href=3D"mailto:aleksandr.loktionov@intel.com">aleksandr.lo=
ktionov@intel.com</a>&gt; wrote:<br>&gt; &gt; On Sun, 2025-05-04 at 13:45 +=
0200, Laurent Bonnaud wrote:<br>&gt; &gt; [...]<br>&gt; &gt; &gt; =C2=A0 - =
Previously the kernel would output an error in<br>&gt; &gt; /var/lib/system=
d/pstore/ but would shutdown anyway.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; =
=C2=A0 - Now, with kernel 6.1.135-1, the shutdown is blocked as with<br>&gt=
; &gt; 6.12.x kernels (see below).<br>&gt; &gt; &gt; &lt;30&gt;[ =C2=A0961.=
098671] systemd-shutdown[1]: Rebooting.<br>&gt; &gt; &gt; &lt;6&gt;[ =C2=A0=
961.098743] kvm: exiting hardware virtualization &lt;6&gt;[<br>&gt; &gt; &g=
t; 961.361878] megaraid_sas 0000:17:00.0: megasas_disable_intr_fusion<br>&g=
t; &gt; is<br>&gt; &gt; &gt; called outbound_intr_mask:0x40000009 &lt;6&gt;=
[ =C2=A0961.414526] ACPI: PM:<br>&gt; &gt; &gt; Preparing to enter system s=
leep state S5 &lt;0&gt;[ =C2=A0963.828210]<br>&gt; &gt; &gt; {1}[Hardware E=
rror]: Hardware error from APEI Generic Hardware Error<br>&gt; &gt; &gt; So=
urce: 5 &lt;0&gt;[ =C2=A0963.828213] {1}[Hardware Error]: event severity:<b=
r>&gt; &gt; fatal &lt;0&gt;[ =C2=A0963.828214] {1}[Hardware Error]: =C2=A0E=
rror 0, type: fatal<br>&gt; &gt; &gt; &lt;0&gt;[ =C2=A0963.828216] {1}[Hard=
ware Error]: =C2=A0 section_type: PCIe error<br>&gt; &gt; &gt; &lt;0&gt;[ =
=C2=A0963.828216] {1}[Hardware Error]: =C2=A0 port_type: 0, PCIe end<br>&gt=
; &gt; point<br>&gt; &gt; &gt; &lt;0&gt;[ =C2=A0963.828217] {1}[Hardware Er=
ror]: =C2=A0 version: 3.0<br>&gt; &gt; &gt; &lt;0&gt;[ =C2=A0963.828218] {1=
}[Hardware Error]: =C2=A0 command: 0x0002, status:<br>&gt; &gt; 0x0010<br>&=
gt; &gt; &gt; &lt;0&gt;[ =C2=A0963.828220] {1}[Hardware Error]: =C2=A0 devi=
ce_id: 0000:01:00.1<br>&gt; &gt; &gt; &lt;0&gt;[ =C2=A0963.828221] {1}[Hard=
ware Error]: =C2=A0 slot: 6<br>&gt;&gt;&gt; &lt;0&gt;[ =C2=A0963.828222] {1=
}[Hardware Error]: =C2=A0 secondary_bus: 0x00<br>&gt;&gt;&gt; &lt;0&gt;[ =
=C2=A0963.828223] {1}[Hardware Error]: =C2=A0 vendor_id: 0x8086,<br>&gt;&gt=
; device_id: 0x1563<br>&gt;&gt;&gt; &lt;0&gt;[ =C2=A0963.828224] {1}[Hardwa=
re Error]: =C2=A0 class_code: 020000<br>&gt;&gt;&gt; &lt;0&gt;[ =C2=A0963.8=
28225] {1}[Hardware Error]: =C2=A0 aer_uncor_status:<br>&gt;&gt; 0x00100000=
, aer_uncor_mask: 0x00018000<br>&gt;&gt;&gt; &lt;0&gt;[ =C2=A0963.828226] {=
1}[Hardware Error]: =C2=A0 aer_uncor_severity:<br>&gt;&gt; 0x000ef010<br>&g=
t;&gt;&gt; &lt;0&gt;[ =C2=A0963.828227] {1}[Hardware Error]: =C2=A0 TLP Hea=
der: 40000001<br>&gt;&gt; 0000000f 90028090 00000000<br>&gt;&gt; [...]<br>&=
gt;&gt; <br>&gt;&gt; It seems that this is a known bug in the BIOS of sever=
al Dell<br>&gt;&gt; PowerEdge models including (in this case) the R540.<br>=
<div><br></div><div>Yup, R730XD here.</div><br>&gt;&gt; A workaround was ad=
ded to the tg3 driver<br>&gt;&gt; &lt;<a href=3D"https://git.kernel.org/lin=
us/e0efe83ed325277bb70f9435d4d9fc70bebdcca8">https://git.kernel.org/linus/e=
0efe83ed325277bb70f9435d4d9fc70bebdcca8</a><br>&gt;&gt;<br>&gt;&gt; and a s=
imilar change was proposed (but not accepted) in the i40e<br>&gt;&gt; drive=
r &lt;<a href=3D"https://lore.kernel.org/all/20241227035459.90602-1-">https=
://lore.kernel.org/all/20241227035459.90602-1-</a><br>&gt;&gt; <a href=3D"h=
ttp://yue.zhao@shopee.com/">yue.zhao@shopee.com/</a>&gt;.<br>&gt;&gt; On ti=
his system the erorr log points to a deivce handled by the ixgbe<br>&gt;&gt=
; driver, and no workaround has been implemented for that.<br>&gt;&gt; <br>=
&gt;&gt; Since this issue seems to affect multiple different NIC vendors an=
d<br>&gt;&gt; drivers, would it make more sense to implement this workaroun=
d as a<br>&gt;&gt; PCI quirk?<br><div><br></div><div>It&#39;s not just netw=
ork devices either.</div><div><br></div><div>&lt;5&gt;[965917.449277] sd 4:=
0:0:0: [sda] Synchronizing SCSI cache<br>&lt;6&gt;[965917.614364] [drm] PCI=
E GART of 256M enabled (table at 0x000000F47FF80000).<br>&lt;6&gt;[965917.8=
20364] [drm] UVD and UVD ENC initialized successfully.<br>&lt;6&gt;[965917.=
921559] [drm] VCE initialized successfully.<br>&lt;6&gt;[965917.926574] amd=
gpu 0000:04:00.0: [drm] Cannot find any crtc or sizes<br>&lt;6&gt;[965917.9=
34684] amdgpu 0000:04:00.0: [drm] Cannot find any crtc or sizes<br>&lt;0&gt=
;[965919.725575] {1}[Hardware Error]: Hardware error from APEI Generic Hard=
ware Error Source: 3<br>&lt;0&gt;[965919.725582] {1}[Hardware Error]: event=
 severity: fatal<br>&lt;0&gt;[965919.725587] {1}[Hardware Error]: =C2=A0Err=
or 0, type: fatal<br>&lt;0&gt;[965919.725591] {1}[Hardware Error]: =C2=A0 s=
ection_type: PCIe error<br>&lt;0&gt;[965919.725595] {1}[Hardware Error]: =
=C2=A0 port_type: 1, legacy PCI end point<br>&lt;0&gt;[965919.725598] {1}[H=
ardware Error]: =C2=A0 version: 1.16<br>&lt;0&gt;[965919.725602] {1}[Hardwa=
re Error]: =C2=A0 command: 0x0407, status: 0x0010<br>&lt;0&gt;[965919.72560=
7] {1}[Hardware Error]: =C2=A0 device_id: 0000:04:00.1<br>&lt;0&gt;[965919.=
725611] {1}[Hardware Error]: =C2=A0 slot: 0<br>&lt;0&gt;[965919.725614] {1}=
[Hardware Error]: =C2=A0 secondary_bus: 0x00<br>&lt;0&gt;[965919.725617] {1=
}[Hardware Error]: =C2=A0 vendor_id: 0x1002, device_id: 0xaae0<br>&lt;0&gt;=
[965919.725622] {1}[Hardware Error]: =C2=A0 class_code: 040300<br>&lt;0&gt;=
[965919.725625] {1}[Hardware Error]: =C2=A0 aer_cor_status: 0x00002000, aer=
_cor_mask: 0x000031c0<br>&lt;0&gt;[965919.725630] {1}[Hardware Error]: =C2=
=A0 aer_uncor_status: 0x00100000, aer_uncor_mask: 0x00010000<br>&lt;0&gt;[9=
65919.725635] {1}[Hardware Error]: =C2=A0 aer_uncor_severity: 0x004e7030<br=
>&lt;0&gt;[965919.725638] {1}[Hardware Error]: =C2=A0 TLP Header: 40008001 =
00000a0f 96a121a0 00000000<br>&lt;0&gt;[965919.725646] GHES: Fatal hardware=
 error but panic disabled<br>&lt;0&gt;[965919.725650] Kernel panic - not sy=
ncing: GHES: Fatal hardware error<br>&lt;4&gt;[965919.725662] CPU: 0 UID: 0=
 PID: 0 Comm: swapper/0 Tainted: P =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 O =C2=
=A0 =C2=A0 =C2=A0 6.14.11-5-bpo12-pve #1<br>&lt;4&gt;[965919.725676] Tainte=
d: [P]=3DPROPRIETARY_MODULE, [O]=3DOOT_MODULE<br>&lt;4&gt;[965919.725689] H=
ardware name: Dell Inc. PowerEdge R730xd/072T6D, BIOS 2.19.0 12/12/2023<br>=
&lt;4&gt;[965919.725694] Call Trace:<br>&lt;4&gt;[965919.725700] =C2=A0&lt;=
NMI&gt;<br>&lt;4&gt;[965919.725706] =C2=A0dump_stack_lvl+0x27/0xa0<br>&lt;4=
&gt;[965919.725722] =C2=A0dump_stack+0x10/0x20<br>&lt;4&gt;[965919.725729] =
=C2=A0panic+0x358/0x3b0<br>&lt;4&gt;[965919.725742] =C2=A0__ghes_panic+0x60=
/0x80<br>&lt;4&gt;[965919.725756] =C2=A0ghes_notify_nmi+0x1d5/0x380<br>&lt;=
4&gt;[965919.725768] =C2=A0nmi_handle.part.0+0x58/0x160<br>&lt;4&gt;[965919=
.725781] =C2=A0default_do_nmi+0x131/0x170<br>&lt;4&gt;[965919.725792] =C2=
=A0exc_nmi+0x1c4/0x290<br>&lt;4&gt;[965919.725799] =C2=A0end_repeat_nmi+0xf=
/0x53<br>&lt;4&gt;[965919.725816] RIP: 0010:intel_idle+0x51/0x90<br>&lt;4&g=
t;[965919.725824] Code: 2d 80 ca 2b 00 eb 52 cc cc cc 48 89 f0 0f 1f 00 31 =
d2 48 89 d1 0f 01 c8 48 8b 06 a8 08 75 0b b9 01 00 00 00 4c 89 c0 0f 01 c9 =
&lt;f0&gt; 80 66 02 df f0 83 44 24 fc 00 48 8b 06 a8 08 74 0b 65 81 25 ea<b=
r>&lt;4&gt;[965919.725830] RSP: 0018:ffffffff8ec03db0 EFLAGS: 00000046<br>&=
lt;4&gt;[965919.725837] RAX: 0000000000000020 RBX: ffff8aa2ffa44680 RCX: 00=
00000000000001<br>&lt;4&gt;[965919.725841] RDX: 0000000000000000 RSI: fffff=
fff8ec107c0 RDI: 0000000000000004<br>&lt;4&gt;[965919.725849] RBP: ffffffff=
8ec03df0 R08: 0000000000000020 R09: 0000000000000000<br>&lt;4&gt;[965919.72=
5854] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000004<br>=
&lt;4&gt;[965919.725857] R13: ffffffff8ee86960 R14: ffffffff8ee86b18 R15: 0=
000000000000004<br>&lt;4&gt;[965919.725866] =C2=A0? intel_idle+0x51/0x90<br=
>&lt;4&gt;[965919.725873] =C2=A0? intel_idle+0x51/0x90<br>&lt;4&gt;[965919.=
725879] =C2=A0&lt;/NMI&gt;<br>&lt;4&gt;[965919.725882] =C2=A0&lt;TASK&gt;<b=
r>&lt;4&gt;[965919.725884] =C2=A0? cpuidle_enter_state+0x85/0x450<br>&lt;4&=
gt;[965919.725895] =C2=A0cpuidle_enter+0x2e/0x50<br>&lt;4&gt;[965919.725908=
] =C2=A0call_cpuidle+0x22/0x60<br>&lt;4&gt;[965919.725918] =C2=A0do_idle+0x=
1de/0x240<br>&lt;4&gt;[965919.725925] =C2=A0cpu_startup_entry+0x29/0x30<br>=
&lt;4&gt;[965919.725930] =C2=A0rest_init+0xd0/0xd0<br>&lt;4&gt;[965919.7259=
34] =C2=A0start_kernel+0x779/0xb60<br>&lt;4&gt;[965919.725941] =C2=A0? load=
_ucode_intel_bsp+0x43/0xa0<br>&lt;4&gt;[965919.725952] =C2=A0x86_64_start_r=
eservations+0x18/0x30<br>&lt;4&gt;[965919.725961] =C2=A0x86_64_start_kernel=
+0xbf/0x110<br>&lt;4&gt;[965919.725968] =C2=A0common_startup_64+0x13e/0x141=
<br>&lt;4&gt;[965919.725980] =C2=A0&lt;/TASK&gt;<br>&lt;0&gt;[965919.726136=
] Kernel Offset: 0xb600000 from 0xffffffff81000000 (relocation range: 0xfff=
fffff80000000-0xffffffffbfffffff)<br></div><div><br></div><div><br>04:00.0 =
VGA compatible controller: Advanced Micro Devices, Inc. [AMD/ATI] Lexa PRO =
[Radeon 540/540X/550/550X / RX 540X/550/550X] (rev c7) (prog-if 00 [VGA con=
troller])<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Subsystem: Advanced Micro Devices,=
 Inc. [AMD/ATI] Lexa PRO [Radeon 540/540X/550/550X / RX 540X/550/550X]<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWIN=
V- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast &gt;TAbo=
rt- &lt;TAbort- &lt;MAbort- &gt;SERR- &lt;PERR- INTx-<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Latency: 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Interrupt: pin A route=
d to IRQ 174<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 NUMA node: 0<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 IOMMU group: 29<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Region 0: Memo=
ry at 38000000000 (64-bit, prefetchable) [size=3D2G]<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Region 2: Memory at 38080000000 (64-bit, prefetchable) [size=3D2=
M]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Region 4: I/O ports at 2000 [size=3D256]<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Region 5: Memory at 96a00000 (32-bit, non-pr=
efetchable) [size=3D256K]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Expansion ROM at 9=
6a60000 [disabled] [size=3D128K]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Capabilitie=
s: &lt;access denied&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Kernel driver in us=
e: amdgpu<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Kernel modules: amdgpu<br><br>04:0=
0.1 Audio device: Advanced Micro Devices, Inc. [AMD/ATI] Baffin HDMI/DP Aud=
io [Radeon RX 550 640SP / RX 560/560X]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Subsy=
stem: Advanced Micro Devices, Inc. [AMD/ATI] Baffin HDMI/DP Audio [Radeon R=
X 550 640SP / RX 560/560X]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Control: I/O+ Mem=
+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B-=
 DisINTx+<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Status: Cap+ 66MHz- UDF- FastB2B- =
ParErr- DEVSEL=3Dfast &gt;TAbort- &lt;TAbort- &lt;MAbort- &gt;SERR- &lt;PER=
R- INTx-<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Latency: 0<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Interrupt: pin B routed to IRQ 172<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 NU=
MA node: 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 IOMMU group: 30<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Region 0: Memory at 96a40000 (64-bit, non-prefetchable) [size=
=3D16K]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Capabilities: &lt;access denied&gt;<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Kernel driver in use: snd_hda_intel<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Kernel modules: snd_hda_intel<br></div><div><br></=
div><div>Was completely idle and unused all boot session, and reboot was ro=
utine after patching. kernel 6.14.11-5-bpo12 from proxmox backports (so ubu=
ntu backports, essentially).</div><div><br></div>&gt; I support the idea of=
 PCI workaround, but who will implement it ?<br><br></div>

--000000000000307a0f064f57ecf3--
