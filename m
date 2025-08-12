Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4566DB227CA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 15:09:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C847F61502;
	Tue, 12 Aug 2025 13:09:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3M-0WCV_nalb; Tue, 12 Aug 2025 13:09:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54C96614C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755004156;
	bh=5JT5AFjf2Qyw6v0wOy+lD78/a1dmmQ/TGhVSpZ93oZg=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5IOUqxAu9xKbheJKGRUYsnLhUrOuBO7C/iRy0EuShvGDNVWUbauYfpvTED4wOdIhn
	 dn1XSFVp/pPJ6w05yA37JihLNkRw8fl5DYkuow/VSm7BQGG9CjEpP7lFkUBz5iFnPi
	 /RL6m0VJYFSdyUaK9/ANO6MSqIn+n9VmjOYXsTaU9ITBVz9YSfI/MA2ba8dwkkZ+9t
	 4G6msSuV3+9cZxzmKBhj6a0nIJmRM6cevz3m1JdzJ1IShhBkqCfL1aeYjhIDMr6cMb
	 E1H+dMpBFjVhUZoknWgaDadG2t0yGRSkgNRCxjxezfj55o3QBu8AnJTVQve6DbcxE8
	 GK6l3MnQujg4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54C96614C9;
	Tue, 12 Aug 2025 13:09:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 25D30B8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:09:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C4A6427BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:09:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qxTwGhNOd1dp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 13:09:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=leafy7382@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2696141677
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2696141677
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2696141677
 for <Intel-wired-lan@osuosl.org>; Tue, 12 Aug 2025 13:09:13 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-23fe2be6061so34507175ad.0
 for <Intel-wired-lan@osuosl.org>; Tue, 12 Aug 2025 06:09:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755004152; x=1755608952;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5JT5AFjf2Qyw6v0wOy+lD78/a1dmmQ/TGhVSpZ93oZg=;
 b=oKHmLIEpM5qBfrmfby/WwJB1hO9HoKnlEEx+4tjas2hDpp+7SOHkNuHuJlpI4/hEBA
 cN+RL2tH2AeT0nZBxYCnmiVVveqR/+kJOQebxRsJFqsRfwbwQFeFEAKt3XUVjBfT0fdG
 pvxH6Lx1ugYnOPNQAL+syxIVKUeSsxRBnDpnCXpCpNDhnGaLCoNQXKPj6GlUeBxl2fcQ
 OTVDMTbuqNtgKbPnxeDxAZ7IKLWbu8p/Iq7KEhb0Zwjk4cUQH8PvHzB3y5V2VAT8QyN0
 Nku7ET1kSwfiQO1l+YtkMe1cTp3UlFrJJdG7LGo6BCWbmGQVuK+fU8HG+D3ePIGuTuCR
 cPcA==
X-Gm-Message-State: AOJu0YwZ+YJxk3MhZ5il3znjpwKPOtjuvRRyAJdj51+kobhEMLzZuSk9
 cHxFxzVOmvZ7vbd5XuSl8dyD3Zqx+fQ7hyTllbM+AL616pJHii+JJXa+j5MrDyJNWJXjn44Z4uw
 GSl326VgbHSRI+I0FgqvY/nWkN80Hy80bXEyDy/Q=
X-Gm-Gg: ASbGncu/vCKH0S4A6qBPd137uV6p+t/0eiB9JUYmkuTjutb5RaqVuozZtlSbbhRzu37
 nak/GaLJFxuVZ8Ydednij5/3jU+fACqG7758VxmddOYro47YA4zy5n5dqNBj6QCT46JXNlWVZ1Y
 kEWnZPJ6aXtyJ1cHHqvB6zQpaGCGaYhcl/23VdVZubOH0FYzrDPd1J6v8NvENZvii4pA5YSX762
 w7SZ7s=
X-Google-Smtp-Source: AGHT+IEzOF9BriGgh/J9gHi5TV4B83SKO7wGCtmHfG6QYFBL75EoFAa8jc51QM3WXInsM6YOUcFzC+diUSMtaSvW/GM=
X-Received: by 2002:a17:902:d490:b0:234:24a8:bee9 with SMTP id
 d9443c01a7336-242fc2a5c5dmr43427045ad.4.1755004151566; Tue, 12 Aug 2025
 06:09:11 -0700 (PDT)
MIME-Version: 1.0
From: Chia-Wei Yeh <leafy7382@gmail.com>
Date: Tue, 12 Aug 2025 21:08:35 +0800
X-Gm-Features: Ac12FXwFf2q8ZlOUs69w9COiQ9RgYaGT_exB3aAAf-oUDaQf0M_7yI_nHWwovoA
Message-ID: <CAEFt+UyRJrp5JyXV2atvqf_r87C4b09_8sTgh1JzP0nKHXwznw@mail.gmail.com>
To: Intel-wired-lan@osuosl.org
Content-Type: multipart/alternative; boundary="00000000000008952e063c2abf45"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1755004152; x=1755608952; darn=osuosl.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=5JT5AFjf2Qyw6v0wOy+lD78/a1dmmQ/TGhVSpZ93oZg=;
 b=LxnThXH6yi8gCCbvMT7MlYXAriyzt4ab1H5nOIywHw2qyxUG1sgdFv5ua0Usjn8ABx
 HGs7Y/enNmlrav/g6zLxdYhHE5AW64xz3Z4A9tVL0nJMEQLGnEb695zBv4DPt3R+7pAg
 8Pdx+ThZQg8lr8w+MezHbhvemOcfzIQFczgyGQvwl7LPk8LoiZbk44+RRu5f4Mx0ZzPV
 3oLdMkO1OECdjpK5noJKQzZFAX8YCSRiz+g+wp1ocyBizcw75x/2rsEBPYp+aL+X0EKY
 Rj47GdD2mAyWen2ahJjRTLo80o64Yrblv40YM4ACZdssgQbTEK4npC8r+tKUoXxbUxSc
 hGmg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=LxnThXH6
Subject: [Intel-wired-lan] igb: I226-V (rev 04) frequent connection drop
 with Linux 6.12.37+
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

--00000000000008952e063c2abf45
Content-Type: text/plain; charset="UTF-8"

Hi Intel team,

I run a home lab server on CWWK CW-AD4L-N V1 and recently updated my kernel
to 6.12.38 with an upgrade from Debian Bookworm to Trixie.

I've observed that using the new kernel, the network connection drops every
couple of hours, and in the worst case scenario, the connections would
completely disappear and the machine would have to be rebooted.
Going back to 6.12.31 fixes the issue. From
https://launchpad.net/debian/+source/linux/+changelog it seems that only
this change was between .37+ and .31

    - igc: disable L1.2 PCI-E link substate to avoid performance issue


This led me to this thread
https://lore.kernel.org/intel-wired-lan/cb7776c8-868f-4191-8b77-8ebbdf674aaf@valdikss.org.ru/
and
it seems that the fix is for i226V with speed cap. But in my case, it
wasn't capped to start with.
I can easily saturate my internet pipe using the 6.12.31 kernel without the
fix.

Idle Latency:     1.15 ms   (jitter: 0.12ms, low: 1.04ms, high: 1.38ms)
    Download:   519.37 Mbps (data used: 397.8 MB)
                  7.27 ms   (jitter: 0.55ms, low: 1.28ms, high: 11.43ms)
      Upload:   522.60 Mbps (data used: 235.1 MB)
                  4.96 ms   (jitter: 0.37ms, low: 2.77ms, high: 5.75ms)
 Packet Loss: Not available.
 Result URL:
https://www.speedtest.net/result/c/bcacca17-8666-4bcf-8300-10c6920ab420

Output of 'lspci -vv -s <x>' w.r.t L1SubCtl1 is:

 Capabilities: [1e0 v1] L1 PM Substates
L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ ASPM_L1.1+ L1_PM_Substates+
 PortCommonModeRestoreTime=55us PortTPowerOnTime=70us
L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
  T_CommonMode=0us LTR1.2_Threshold=138240ns
L1SubCtl2: T_PwrOn=70us
Kernel driver in use: igc

Can we hide this behind a module option so that systems that aren't speed
capped won't be affected by the patch?

Happy to run any test or debug if needed.

Thank you,
Chia-Wei Yeh


-- 
"If it looks like a duck, walks like a duck, and quacks like a duck, then
to the end user it's a duck, and end users have made it pretty clear they
want a duck; whether the duck drinks hot chocolate or coffee is irrelevant."

--00000000000008952e063c2abf45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Intel team,</div><div><br></div><div>I run a =
home lab server on CWWK CW-AD4L-N V1 and recently updated my kernel to 6.12=
.38 with an upgrade from Debian Bookworm to Trixie.=C2=A0</div><div><br></d=
iv><div>I&#39;ve observed that using the new kernel, the network connection=
 drops every couple of hours, and in the worst=C2=A0case scenario, the conn=
ections would completely disappear and the=C2=A0machine would have to be re=
booted.</div><div>Going back to 6.12.31 fixes the issue. From=C2=A0<a href=
=3D"https://launchpad.net/debian/+source/linux/+changelog" target=3D"_blank=
">https://launchpad.net/debian/+source/linux/+changelog</a>=C2=A0it seems t=
hat only this change was between .37+ and .31</div><div><br></div><div><pre=
 id=3D"m_6997039210896884039gmail-linux_6.12.37-1" style=3D"margin:0px 0px =
0.3em;padding:0px;font-family:&quot;Ubuntu Mono variable&quot;,&quot;Ubuntu=
 Mono&quot;,Consolas,Monaco,Courier,monospace;color:rgb(0,0,0);font-size:12=
.8px">    - igc: disable L1.2 PCI-E link substate to avoid performance issu=
e
</pre><br></div><div>This led me to this thread=C2=A0<a href=3D"https://lor=
e.kernel.org/intel-wired-lan/cb7776c8-868f-4191-8b77-8ebbdf674aaf@valdikss.=
org.ru/" target=3D"_blank">https://lore.kernel.org/intel-wired-lan/cb7776c8=
-868f-4191-8b77-8ebbdf674aaf@valdikss.org.ru/</a>=C2=A0and it seems that th=
e fix is for i226V with speed cap. But in my case, it wasn&#39;t capped to =
start with.</div><div>I can easily saturate my internet pipe using the 6.12=
.31 kernel without=C2=A0the fix.</div><div><br></div><div><font face=3D"mon=
ospace">Idle Latency: =C2=A0 =C2=A0 1.15 ms =C2=A0 (jitter: 0.12ms, low: 1.=
04ms, high: 1.38ms)<br>=C2=A0 =C2=A0 Download: =C2=A0 519.37 Mbps (data use=
d: 397.8 MB)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 7.27 ms =C2=A0 (jitter: 0.55ms, low: 1.28ms, high: 11.43ms)<br>=C2=A0 =
=C2=A0 =C2=A0 Upload: =C2=A0 522.60 Mbps (data used: 235.1 MB)<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4.96 ms =C2=A0 (jit=
ter: 0.37ms, low: 2.77ms, high: 5.75ms)<br>=C2=A0Packet Loss: Not available=
.<br>=C2=A0Result URL:=C2=A0<a href=3D"https://www.speedtest.net/result/c/b=
cacca17-8666-4bcf-8300-10c6920ab420" target=3D"_blank">https://www.speedtes=
t.net/result/c/bcacca17-8666-4bcf-8300-10c6920ab420</a></font></div><div><b=
r></div><div>Output of &#39;lspci -vv -s &lt;x&gt;&#39; w.r.t L1SubCtl1 is:=
</div><div><br></div><div><font face=3D"monospace">=C2=A0Capabilities: [1e0=
 v1] L1 PM Substates<br>		L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ AS=
PM_L1.1+ L1_PM_Substates+<br>			 =C2=A0PortCommonModeRestoreTime=3D55us Por=
tTPowerOnTime=3D70us<br>		L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- A=
SPM_L1.1-<br>			 =C2=A0 T_CommonMode=3D0us LTR1.2_Threshold=3D138240ns<br>	=
	L1SubCtl2: T_PwrOn=3D70us<br>	Kernel driver in use: igc</font></div><div><=
br></div><div>Can we hide this behind a module option so that systems that =
aren&#39;t speed capped won&#39;t be affected by the patch?</div><div><br><=
/div><div>Happy to run any test or debug if needed.</div><div><br></div><di=
v>Thank you,</div><div>Chia-Wei Yeh</div><font color=3D"#888888"><div><br><=
/div></font></div><div><br></div><span class=3D"gmail_signature_prefix">-- =
</span><br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gma=
il_signature">&quot;If it looks like a duck, walks like a duck, and quacks =
like a duck, then to the end user it&#39;s a duck, and end users have made =
it pretty clear they want a duck; whether the duck drinks hot chocolate or =
coffee is irrelevant.&quot;</div></div>

--00000000000008952e063c2abf45--
