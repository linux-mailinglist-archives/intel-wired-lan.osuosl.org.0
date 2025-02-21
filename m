Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F6BA3EB20
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 04:12:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2925683B64;
	Fri, 21 Feb 2025 03:12:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lMTs6Xk6WyiD; Fri, 21 Feb 2025 03:12:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 282B883B6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740107560;
	bh=hMdw5MNLjfCRz6x67AH68oaiIUsFGR9lDNGynQXXdpo=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DSTGICtv5FXWBWzgCQb2y5DPalFIfJVus8k1zKEdbVT2jC7yxqxmyDsPDOt7slADa
	 +VZPd2MI4ifMk+k0bFe5afVaCJTKM1nB7y+Wnq/zvXqF1EFBvVc8tMWUXGsQuaGGtD
	 enQOmMcr5vyeei392mRMsbG8B+UXCTF/WOj3z6PnxQp69U+UQoy0OKJ4FzzZhxNKJd
	 292ADxda0xlTwenEkDK6C0yUpbjGIAqdyogCUKLIPHllLaPJshvYdL0mIgZpqlW4Aw
	 ZK82PtP3+oxGBhTxmzIm0Xf6tOK9O/rDdfzIHEE00i9g3rCzj2SWWvId2odhjUEKhX
	 fv/Z8AJ++2e0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 282B883B6C;
	Fri, 21 Feb 2025 03:12:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 98329194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 03:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8711B40E60
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 03:12:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZkqJlzPEa3u1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 03:12:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62f; helo=mail-ej1-x62f.google.com;
 envelope-from=masakazu.asama@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 083D340C70
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 083D340C70
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 083D340C70
 for <intel-wired-lan@osuosl.org>; Fri, 21 Feb 2025 03:12:35 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-abb7a6ee2deso261252666b.0
 for <intel-wired-lan@osuosl.org>; Thu, 20 Feb 2025 19:12:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740107553; x=1740712353;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=x59f5pvWeSKZsvLcEDIh4llu+/nSZREZ37x2gp1+6DM=;
 b=P2ND/hbb/h96kUR2BcF1Rgwk8O8cgeUI0uelRU1XEsCVeLgcQ1WlZJrt4UGz7mnPHC
 jaMjxDLrivLInmZiVpptEq6urraAF7HGcOweHqFIMM/fr8Cjs1De32UUTa+ducAklsE4
 /B7c+G2BoogNdaQHyFcvldHLMvuQtpza42cOOPoU+WEvJ0dRM/SGkFBBxYhAZqg7wuOU
 Mm00UojvjBjW5Vm3XnRlzVIWBsCu/ZDeqijLDmSSUFAU5WCSLVJN9TEbKu9k5O6SaLcX
 NHFJNl1K3niN1VowiKWjrwOLJKPQQQyoxUK8VuQk0Z+hiVGsC75IkUsP/pDVxhhEFdIy
 2sfQ==
X-Gm-Message-State: AOJu0YzWZs/WzbRkXEGgvCBKSnupjTzbl3KM0FTSZMz6aA2FEEWu8KQ8
 4lDAApsR5cYydpM1mNrm+JGDe2Pz5IG3jN2rlGgAYWRvuzR3VsLdtvQSDbMVVkoNLCs5EUSNVJd
 SulqvXA127VVMI/r1lQRPBeO5ZtFwXNcO
X-Gm-Gg: ASbGncsMw9K79bQ2sN77Vy4P7vJ9TvQgAXXlvDNfcbZ+X5FJI6bUa7FLDdPNnExxfj/
 i3ehGqFJe4/8KG+FKgPz33ClJe4UX0SnG/vtvFqA+KM5FIY/pfZFkDAJ661jn/azh8wVG5QUsv0
 oAsUgsbEjA3ZXz1qlFdrFSMeo4GlU1e4WPvg==
X-Google-Smtp-Source: AGHT+IE7TO2n3LxrD44+OLlzEWyztqlVavYqYL1tpf88AzaYzGI7DoO4n22KS6ZuZTacXLFY7hbDcfmTEl/I6jleP5o=
X-Received: by 2002:a17:906:32db:b0:ab7:6fa9:b0a9 with SMTP id
 a640c23a62f3a-abc099eb346mr142396566b.11.1740107553313; Thu, 20 Feb 2025
 19:12:33 -0800 (PST)
MIME-Version: 1.0
From: Masakazu Asama <masakazu.asama@gmail.com>
Date: Fri, 21 Feb 2025 12:12:20 +0900
X-Gm-Features: AWEUYZmaYTQ-Rg9HnCMZiwRFHUGBCoflNYrPVTWyHAb3wgDY__eBdiAE0UO0Wlk
Message-ID: <CAP8M2pGttT4JBjt+i4GJkxy7yERbqWJ5a8R14HzoonTLByc2Cw@mail.gmail.com>
To: intel-wired-lan@osuosl.org
Content-Type: multipart/mixed; boundary="000000000000964d15062e9e5cc7"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740107553; x=1740712353; darn=osuosl.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=x59f5pvWeSKZsvLcEDIh4llu+/nSZREZ37x2gp1+6DM=;
 b=boWAqF7hXCqhtp6IJgZ1UteIqh47XVG7++ndIs+M1MUxDjzbjXOmkLSR72wG4CM2YE
 dgI5CJAcnt9cP1AVo9F5OL4R8yIpmfeTcZV0IkiYeQe7Of98LAwYM89Qe4NpOVgoTHKJ
 ECX7x5dx/uuOjSS5+lwXpq+RdaA7/a3rBwvgRxPv0TPghObz3GzMxUavHP0/ze+RYm4s
 VBwWiF7ngomFHCZFcZT4j5ecHO1lZYVCWwaxVP68hCnce4yHPVb6YY3V0yUjJqorKU/H
 68J6B61c/PmrpnfFBHK41YD076IecieDMrLLgFp/KF+3+sjtajPfrx7HZKcigw2yJODC
 6TuA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=boWAqF7h
Subject: [Intel-wired-lan] The ice driver may rarely return incorrect
 statistics counter values
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

--000000000000964d15062e9e5cc7
Content-Type: multipart/alternative; boundary="000000000000964d13062e9e5cc5"

--000000000000964d13062e9e5cc5
Content-Type: text/plain; charset="UTF-8"

We have observed a very rare issue in Intel E810 environments where
SNMP-retrieved TX/RX counter values are sometimes nearly twice the actual
values.

Upon investigation, we identified a problem in the process that updates the
transmit and receive ring statistics in the ice driver. This issue occurs
when the counter update process is executed simultaneously on different CPU
cores.

I have attached a patch to fix this issue.

This patch is intended for Linux kernel 5.15 on Ubuntu 22.04, as my
environment is Ubuntu 22.04.

In my test environment, applying this patch prevents the issue from
occurring.

The function ice_update_vsi_ring_stats takes a pointer to a struct ice_vsi
as an argument. This structure is allocated on the heap and shared across
all CPU cores. The function resets the counter values to zero and then
accumulates the values from each ring of the NIC.

However, since struct ice_vsi is shared across all CPU cores, the following
race condition can occur when ice_update_vsi_ring_stats is executed
simultaneously on different CPUs:

1. Multiple CPU cores reset the counter values in struct ice_vsi to zero at
the same time.

2. Each CPU core independently increments the counter values.

As a result, the counter values may be updated to a higher-than-actual
value.

The attached patch modifies the implementation to store the counter values
on the stack, initialize them to zero, increment them with the values from
each ring, and finally update struct ice_vsi. By avoiding the use of shared
data for intermediate calculations, this fix prevents the issue.

In my environment, multiple Intel E810 NICs are bonded together.

I use Zabbix to graph the RX/TX counters of the bonding interface. However,
due to the way bonding ignores decreases in the counters of slave
interfaces, this issue makes the statistics completely unreliable.

Graphs generated from the slave interfaces may appear normal because, even
if the counter temporarily increases, it is corrected in the next
observation.

When I reported this issue to the Ubuntu bug tracking system, I was told to
get it merged upstream first.

I would like this issue to be fixed, but what should I do to get it
accepted?

Any advice would be greatly appreciated.

--000000000000964d13062e9e5cc5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"gmail-p1">We have observed a very rare issue i=
n Intel E810 environments where SNMP-retrieved TX/RX counter values are som=
etimes nearly twice the actual values.</p>
<p class=3D"gmail-p1">Upon investigation, we identified a problem in the pr=
ocess that updates the transmit and receive ring statistics in the ice driv=
er. This issue occurs when the counter update process is executed simultane=
ously on different CPU cores.</p>
<p class=3D"gmail-p1">I have attached a patch to fix this issue.</p>
<p class=3D"gmail-p1">This patch is intended for Linux kernel 5.15 on Ubunt=
u 22.04, as my environment is Ubuntu 22.04.</p>
<p class=3D"gmail-p1">In my test environment, applying this patch prevents =
the issue from occurring.</p>
<p class=3D"gmail-p1">The function <span class=3D"gmail-s1">ice_update_vsi_=
ring_stats</span> takes a pointer to a <span class=3D"gmail-s1">struct ice_=
vsi</span> as an argument. This structure is allocated on the heap and shar=
ed across all CPU cores. The function resets the counter values to zero and=
 then accumulates the values from each ring of the NIC.</p>
<p class=3D"gmail-p1">However, since <span class=3D"gmail-s1">struct ice_vs=
i</span> is shared across all CPU cores, the following race condition can o=
ccur when <span class=3D"gmail-s1">ice_update_vsi_ring_stats</span> is exec=
uted simultaneously on different CPUs:</p>
<p class=3D"gmail-p3"><span class=3D"gmail-Apple-tab-span">	</span>1.<span =
class=3D"gmail-Apple-tab-span">	</span>Multiple CPU cores reset the counter=
 values in <span class=3D"gmail-s1">struct ice_vsi</span> to zero at the sa=
me time.</p>
<p class=3D"gmail-p3"><span class=3D"gmail-Apple-tab-span">	</span>2.<span =
class=3D"gmail-Apple-tab-span">	</span>Each CPU core independently incremen=
ts the counter values.</p>
<p class=3D"gmail-p1">As a result, the counter values may be updated to a h=
igher-than-actual value.</p>
<p class=3D"gmail-p1">The attached patch modifies the implementation to sto=
re the counter values on the stack, initialize them to zero, increment them=
 with the values from each ring, and finally update <span class=3D"gmail-s1=
">struct ice_vsi</span>. By avoiding the use of shared data for intermediat=
e calculations, this fix prevents the issue.</p>
<p class=3D"gmail-p1">In my environment, multiple Intel E810 NICs are bonde=
d together.</p>
<p class=3D"gmail-p1">I use Zabbix to graph the RX/TX counters of the bondi=
ng interface. However, due to the way bonding ignores decreases in the coun=
ters of slave interfaces, this issue makes the statistics completely unreli=
able.</p>
<p class=3D"gmail-p1">Graphs generated from the slave interfaces may appear=
 normal because, even if the counter temporarily increases, it is corrected=
 in the next observation.</p>
<p class=3D"gmail-p1">When I reported this issue to the Ubuntu bug tracking=
 system, I was told to get it merged upstream first.</p>
<p class=3D"gmail-p1">I would like this issue to be fixed, but what should =
I do to get it accepted?</p>
<p class=3D"gmail-p1">Any advice would be greatly appreciated.</p></div>

--000000000000964d13062e9e5cc5--

--000000000000964d15062e9e5cc7
Content-Type: application/octet-stream; 
	name="ice_update_vsi_ring_stats.patch"
Content-Disposition: attachment; filename="ice_update_vsi_ring_stats.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_m7e71rer0>
X-Attachment-Id: f_m7e71rer0

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKaW5kZXggYjRjNjk2NWE4
Li4zOGJhNDYyMzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfbWFpbi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5j
CkBAIC01NzQ2LDEwICs1NzQ2LDEwIEBAIGljZV9mZXRjaF91NjRfc3RhdHNfcGVyX3Jpbmcoc3Ry
dWN0IGljZV9yaW5nICpyaW5nLCB1NjQgKnBrdHMsIHU2NCAqYnl0ZXMpCiAgKiBAY291bnQ6IG51
bWJlciBvZiByaW5ncwogICovCiBzdGF0aWMgdm9pZAotaWNlX3VwZGF0ZV92c2lfdHhfcmluZ19z
dGF0cyhzdHJ1Y3QgaWNlX3ZzaSAqdnNpLCBzdHJ1Y3QgaWNlX3JpbmcgKipyaW5ncywKLQkJCSAg
ICAgdTE2IGNvdW50KQoraWNlX3VwZGF0ZV92c2lfdHhfcmluZ19zdGF0cyh1NjQgKnR4X3BhY2tl
dHMsIHU2NCAqdHhfYnl0ZXMsIHU2NCAqdHhfcmVzdGFydCwKKwkJdTY0ICp0eF9idXN5LCB1NjQg
KnR4X2xpbmVhcml6ZSwgc3RydWN0IGljZV9yaW5nICoqcmluZ3MsCisJCXUxNiBjb3VudCkKIHsK
LQlzdHJ1Y3QgcnRubF9saW5rX3N0YXRzNjQgKnZzaV9zdGF0cyA9ICZ2c2ktPm5ldF9zdGF0czsK
IAl1MTYgaTsKIAogCWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7CkBAIC01NzU4LDExICs1
NzU4LDExIEBAIGljZV91cGRhdGVfdnNpX3R4X3Jpbmdfc3RhdHMoc3RydWN0IGljZV92c2kgKnZz
aSwgc3RydWN0IGljZV9yaW5nICoqcmluZ3MsCiAKIAkJcmluZyA9IFJFQURfT05DRShyaW5nc1tp
XSk7CiAJCWljZV9mZXRjaF91NjRfc3RhdHNfcGVyX3JpbmcocmluZywgJnBrdHMsICZieXRlcyk7
Ci0JCXZzaV9zdGF0cy0+dHhfcGFja2V0cyArPSBwa3RzOwotCQl2c2lfc3RhdHMtPnR4X2J5dGVz
ICs9IGJ5dGVzOwotCQl2c2ktPnR4X3Jlc3RhcnQgKz0gcmluZy0+dHhfc3RhdHMucmVzdGFydF9x
OwotCQl2c2ktPnR4X2J1c3kgKz0gcmluZy0+dHhfc3RhdHMudHhfYnVzeTsKLQkJdnNpLT50eF9s
aW5lYXJpemUgKz0gcmluZy0+dHhfc3RhdHMudHhfbGluZWFyaXplOworCQkqdHhfcGFja2V0cyAr
PSBwa3RzOworCQkqdHhfYnl0ZXMgKz0gYnl0ZXM7CisJCSp0eF9yZXN0YXJ0ICs9IHJpbmctPnR4
X3N0YXRzLnJlc3RhcnRfcTsKKwkJKnR4X2J1c3kgKz0gcmluZy0+dHhfc3RhdHMudHhfYnVzeTsK
KwkJKnR4X2xpbmVhcml6ZSArPSByaW5nLT50eF9zdGF0cy50eF9saW5lYXJpemU7CiAJfQogfQog
CkBAIC01Nzc2LDQxICs1Nzc2LDU0IEBAIHN0YXRpYyB2b2lkIGljZV91cGRhdGVfdnNpX3Jpbmdf
c3RhdHMoc3RydWN0IGljZV92c2kgKnZzaSkKIAl1NjQgcGt0cywgYnl0ZXM7CiAJaW50IGk7CiAK
LQkvKiByZXNldCBuZXRkZXYgc3RhdHMgKi8KLQl2c2lfc3RhdHMtPnR4X3BhY2tldHMgPSAwOwot
CXZzaV9zdGF0cy0+dHhfYnl0ZXMgPSAwOwotCXZzaV9zdGF0cy0+cnhfcGFja2V0cyA9IDA7Ci0J
dnNpX3N0YXRzLT5yeF9ieXRlcyA9IDA7CisJdTY0IHR4X3BhY2tldHMgPSAwOworCXU2NCB0eF9i
eXRlcyA9IDA7CisJdTY0IHJ4X3BhY2tldHMgPSAwOworCXU2NCByeF9ieXRlcyA9IDA7CiAKLQkv
KiByZXNldCBub24tbmV0ZGV2IChleHRlbmRlZCkgc3RhdHMgKi8KLQl2c2ktPnR4X3Jlc3RhcnQg
PSAwOwotCXZzaS0+dHhfYnVzeSA9IDA7Ci0JdnNpLT50eF9saW5lYXJpemUgPSAwOwotCXZzaS0+
cnhfYnVmX2ZhaWxlZCA9IDA7Ci0JdnNpLT5yeF9wYWdlX2ZhaWxlZCA9IDA7CisJdTY0IHR4X3Jl
c3RhcnQgPSAwOworCXU2NCB0eF9idXN5ID0gMDsKKwl1NjQgdHhfbGluZWFyaXplID0gMDsKKwl1
NjQgcnhfYnVmX2ZhaWxlZCA9IDA7CisJdTY0IHJ4X3BhZ2VfZmFpbGVkID0gMDsKIAogCXJjdV9y
ZWFkX2xvY2soKTsKIAogCS8qIHVwZGF0ZSBUeCByaW5ncyBjb3VudGVycyAqLwotCWljZV91cGRh
dGVfdnNpX3R4X3Jpbmdfc3RhdHModnNpLCB2c2ktPnR4X3JpbmdzLCB2c2ktPm51bV90eHEpOwor
CWljZV91cGRhdGVfdnNpX3R4X3Jpbmdfc3RhdHMoJnR4X3BhY2tldHMsICZ0eF9ieXRlcywgJnR4
X3Jlc3RhcnQsCisJCQkmdHhfYnVzeSwgJnR4X2xpbmVhcml6ZSwgdnNpLT50eF9yaW5ncywgdnNp
LT5udW1fdHhxKTsKIAogCS8qIHVwZGF0ZSBSeCByaW5ncyBjb3VudGVycyAqLwogCWljZV9mb3Jf
ZWFjaF9yeHEodnNpLCBpKSB7CiAJCXN0cnVjdCBpY2VfcmluZyAqcmluZyA9IFJFQURfT05DRSh2
c2ktPnJ4X3JpbmdzW2ldKTsKIAogCQlpY2VfZmV0Y2hfdTY0X3N0YXRzX3Blcl9yaW5nKHJpbmcs
ICZwa3RzLCAmYnl0ZXMpOwotCQl2c2lfc3RhdHMtPnJ4X3BhY2tldHMgKz0gcGt0czsKLQkJdnNp
X3N0YXRzLT5yeF9ieXRlcyArPSBieXRlczsKLQkJdnNpLT5yeF9idWZfZmFpbGVkICs9IHJpbmct
PnJ4X3N0YXRzLmFsbG9jX2J1Zl9mYWlsZWQ7Ci0JCXZzaS0+cnhfcGFnZV9mYWlsZWQgKz0gcmlu
Zy0+cnhfc3RhdHMuYWxsb2NfcGFnZV9mYWlsZWQ7CisJCXJ4X3BhY2tldHMgKz0gcGt0czsKKwkJ
cnhfYnl0ZXMgKz0gYnl0ZXM7CisJCXJ4X2J1Zl9mYWlsZWQgKz0gcmluZy0+cnhfc3RhdHMuYWxs
b2NfYnVmX2ZhaWxlZDsKKwkJcnhfcGFnZV9mYWlsZWQgKz0gcmluZy0+cnhfc3RhdHMuYWxsb2Nf
cGFnZV9mYWlsZWQ7CiAJfQogCiAJLyogdXBkYXRlIFhEUCBUeCByaW5ncyBjb3VudGVycyAqLwog
CWlmIChpY2VfaXNfeGRwX2VuYV92c2kodnNpKSkKLQkJaWNlX3VwZGF0ZV92c2lfdHhfcmluZ19z
dGF0cyh2c2ksIHZzaS0+eGRwX3JpbmdzLAotCQkJCQkgICAgIHZzaS0+bnVtX3hkcF90eHEpOwor
CQlpY2VfdXBkYXRlX3ZzaV90eF9yaW5nX3N0YXRzKCZ0eF9wYWNrZXRzLCAmdHhfYnl0ZXMsCisJ
CQkJJnR4X3Jlc3RhcnQsICZ0eF9idXN5LCAmdHhfbGluZWFyaXplLAorCQkJCXZzaS0+eGRwX3Jp
bmdzLCB2c2ktPm51bV94ZHBfdHhxKTsKIAogCXJjdV9yZWFkX3VubG9jaygpOworCisJLyogcmVz
ZXQgbmV0ZGV2IHN0YXRzICovCisJdnNpX3N0YXRzLT50eF9wYWNrZXRzID0gdHhfcGFja2V0czsK
Kwl2c2lfc3RhdHMtPnR4X2J5dGVzID0gdHhfYnl0ZXM7CisJdnNpX3N0YXRzLT5yeF9wYWNrZXRz
ID0gcnhfcGFja2V0czsKKwl2c2lfc3RhdHMtPnJ4X2J5dGVzID0gcnhfYnl0ZXM7CisKKwkvKiBy
ZXNldCBub24tbmV0ZGV2IChleHRlbmRlZCkgc3RhdHMgKi8KKwl2c2ktPnR4X3Jlc3RhcnQgPSB0
eF9yZXN0YXJ0OworCXZzaS0+dHhfYnVzeSA9IHR4X2J1c3k7CisJdnNpLT50eF9saW5lYXJpemUg
PSB0eF9saW5lYXJpemU7CisJdnNpLT5yeF9idWZfZmFpbGVkID0gcnhfYnVmX2ZhaWxlZDsKKwl2
c2ktPnJ4X3BhZ2VfZmFpbGVkID0gcnhfcGFnZV9mYWlsZWQ7CiB9CiAKIC8qKgo=
--000000000000964d15062e9e5cc7--
