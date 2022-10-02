Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0865B5F21CE
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Oct 2022 09:52:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AEAD828B5;
	Sun,  2 Oct 2022 07:52:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AEAD828B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664697169;
	bh=dSMLa5Y/a3yzJbqxfqh2AX389Tlrmn4rICM+9QOno60=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KVr73NE6H0XYW0wzI5k0DMfN0YZKYyMIJqi7g8JGzCavH31zsjT0dGv6yuyri15Z9
	 gcRqvaJP4Dv5GO8I3vNMOU0pDZ2ugv2K8dq2BJ3L6qudnERwRVijgb98smRHIzJrWe
	 8mLHkIZvbbfQsUwI91ij647k+gMAI3UF/Y7TbrF1h8OlxPvR9cfrJU15YlMHCm8Gvu
	 34OgqW6OXVs2NClFso3xMwXtvmMf8mWPh85mAqxqmO6lQ9COW19Mu+GTyiwOhv2uA7
	 lKrIq+ded+KQr3zp7ygv/hJWoL6R1gFJVAWIVPaMvnPWesLEhRKhQUvJ3kOHnYpipF
	 DS4XVM6ffj2Hg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ehWqD7SZ5BLP; Sun,  2 Oct 2022 07:52:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE2B98284B;
	Sun,  2 Oct 2022 07:52:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE2B98284B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 147A81BF403
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 07:52:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE8C0605D6
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 07:52:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE8C0605D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j_MYOtaDgfRR for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Oct 2022 07:52:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 396A96059D
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 396A96059D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 07:52:40 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae8b9.dynamic.kabel-deutschland.de
 [95.90.232.185])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0364961EA192A;
 Sun,  2 Oct 2022 09:52:36 +0200 (CEST)
Content-Type: multipart/mixed; boundary="------------U26DupcPsJrIPHqh0aVUPDXE"
Message-ID: <3f675a1c-0a24-85b5-acad-eaad3fe7e38f@molgen.mpg.de>
Date: Sun, 2 Oct 2022 09:52:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Amir Avivi <amir.avivi@intel.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>,
 Devora Fuxbrumer <devora.fuxbrumer@intel.com>
References: <53c37a6f-c8cd-63d6-696f-6b50b70f78ea@molgen.mpg.de>
 <d287a371-2a26-04f7-9adc-c7d8a19bfc14@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <d287a371-2a26-04f7-9adc-c7d8a19bfc14@intel.com>
Subject: Re: [Intel-wired-lan] Link does not come up after resuming from
 ACPI S3
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.
--------------U26DupcPsJrIPHqh0aVUPDXE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear Sasha,


Thank you for your reply.

Am 02.10.22 um 08:57 schrieb Neftin, Sasha:
> On 9/30/2022 18:56, Paul Menzel wrote:

>> On a Dell Latitude E7250 with Debian sid/unstable, resuming Linux 
>> 5.19.6 and connecting an Ethernet cable, the link did not come up.

> What is the device ID you tried to operate on your board? Could you 
> provide whole lspci output and particular for:
> lspci -s 0000:00:19.0 -vvv and lspci -s 0000:00:1f.6 -vvv?

Please find it attached from a boot where the problem did not happen, as 
I am unable to reproduce the issue. Device 0:1f.6 does not exist.

> I've added the PAE expert (Amir).

Awesome.


Thank you and kind regards,

Paul
>>      $ lspci -s 02:00.0 -nn
>>      02:00.0 Network controller [0280]: Intel Corporation Wireless 7265 [8086:095a] (rev 59)

Sorry for posting the wrong device:

     00:19.0 Ethernet controller [0200]: Intel Corporation Ethernet 
Connection (3) I218-LM [8086:15a2] (rev 03)


Kind rnegards,

Paul


>> ```
>> […]
>> [263232.060912] e1000e 0000:00:19.0 eno1: NIC Link is Down
>> [263237.160937] e1000e 0000:00:19.0 eno1: NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx
>> [263238.142253] e1000e 0000:00:19.0 eno1: NIC Link is Down
>> [263245.687208] iwlwifi 0000:02:00.0: RF_KILL bit toggled to disable radio.
>> [263245.687212] iwlwifi 0000:02:00.0: reporting RF_KILL (radio disabled)
>> [263245.699263] iwlwifi 0000:02:00.0: Disabled INTA bits 0x10000000 were pending
>> [263246.796994] e1000e 0000:00:19.0 eno1: NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx
>> [263247.778192] e1000e 0000:00:19.0 eno1: NIC Link is Down
>> [263252.770667] e1000e 0000:00:19.0 eno1: NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx
>> [263253.751948] e1000e 0000:00:19.0 eno1: NIC Link is Down
>> […]
>> ```
>>
>> Enabling the debug message with
>>
>>      echo "module e1000e +p" | sudo tee /sys/kernel/debug/dynamic_debug/control
>>
>> there is
>>
>> ```
>> [263463.845944] e1000e 0000:00:19.0 eno1: NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx
>> [263464.839339] e1000e 0000:00:19.0 eno1: NIC Link is Down
>> [263469.658556] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x1
>> [263469.658616] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x1
>> [263471.542403] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x1
>> [263471.542480] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x1
>> [263473.454131] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x1
>> [263473.454212] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x1
>> [263473.454280] e1000e 0000:00:19.0 eno1: 1000 Mbps, Full Duplex
>> [263473.454298] e1000e 0000:00:19.0 eno1: Setting page 0x0
>> [263473.454360] e1000e 0000:00:19.0 eno1: writing PHY page 0 (or 0x0 shifted) reg 0x10
>> [263473.454420] e1000e 0000:00:19.0 eno1: Setting page 0x0
>> [263473.454479] e1000e 0000:00:19.0 eno1: writing PHY page 0 (or 0x0 shifted) reg 0x11
>> [263473.454538] e1000e 0000:00:19.0 eno1: Setting page 0x6080
>> [263473.454596] e1000e 0000:00:19.0 eno1: reading PHY page 772 (or 0x6080 shifted) reg 0x1c
>> [263473.454656] e1000e 0000:00:19.0 eno1: Setting page 0x6080
>> [263473.454714] e1000e 0000:00:19.0 eno1: writing PHY page 772 (or 0x6080 shifted) reg 0x1c
>> [263473.454773] e1000e 0000:00:19.0 eno1: Setting page 0x6040
>> [263473.454831] e1000e 0000:00:19.0 eno1: reading PHY page 770 (or  0x6040 shifted) reg 0x11
>> [263473.454890] e1000e 0000:00:19.0 eno1: Setting page 0x6040
>> [263473.454948] e1000e 0000:00:19.0 eno1: writing PHY page 770 (or 0x6040 shifted) reg 0x11
>> [263473.455059] e1000e 0000:00:19.0 eno1: 1000 Mbps, Full Duplex
>> [263473.455073] e1000e 0000:00:19.0 eno1: Setting page 0x6080
>> [263473.455131] e1000e 0000:00:19.0 eno1: reading PHY page 772 (or 0x6080 shifted) reg 0x14
>> [263473.455190] e1000e 0000:00:19.0 eno1: Setting page 0x0
>> [263473.455248] e1000e 0000:00:19.0 eno1: writing PHY page 0 (or 0x0 shifted) reg 0x10
>> [263473.455307] e1000e 0000:00:19.0 eno1: Setting page 0x0
>> [263473.455365] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x11
>> [263473.455424] e1000e 0000:00:19.0 eno1: Setting page 0x0
>> [263473.455482] e1000e 0000:00:19.0 eno1: writing PHY page 0 (or 0x0 shifted) reg 0x10
>> [263473.455541] e1000e 0000:00:19.0 eno1: Setting page 0x0
>> [263473.455599] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x11
>> [263473.455658] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x5
>> [263473.455716] e1000e 0000:00:19.0 eno1: Setting page 0x0
>> [263473.455774] e1000e 0000:00:19.0 eno1: writing PHY page 0 (or 0x0 shifted) reg 0x10
>> [263473.455833] e1000e 0000:00:19.0 eno1: Setting page 0x0
>> [263473.455891] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x11
>> [263473.455950] e1000e 0000:00:19.0 eno1: Setting page 0x6080
>> [263473.456008] e1000e 0000:00:19.0 eno1: writing PHY page 772 (or 0x6080 shifted) reg 0x14
>> [263473.456071] e1000e 0000:00:19.0 eno1: hw->fc.current_mode = 3
>> [263473.456078] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x1
>> [263473.456140] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x1
>> [263473.456201] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x4
>> [263473.456262] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x5
>> [263473.456322] e1000e 0000:00:19.0 eno1: Flow Control = FULL.
>> [263473.456326] e1000e 0000:00:19.0 eno1: 1000 Mbps, Full Duplex
>> [263473.456330] e1000e 0000:00:19.0 eno1: hw->fc.current_mode = 3
>> [263473.456340] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x0
>> [263473.456401] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x1
>> [263473.456463] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x4
>> [263473.456524] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x5
>> [263473.456585] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x6
>> [263473.456646] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x9
>> [263473.456708] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0xa
>> [263473.456769] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0xf
>> [263473.456829] e1000e 0000:00:19.0 eno1: 1000 Mbps, Full Duplex
>> [263473.456836] e1000e 0000:00:19.0 eno1: NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx
>> [263474.458100] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x1
>> [263474.458169] e1000e 0000:00:19.0 eno1: reading PHY page 0 (or 0x0 shifted) reg 0x1
>> [263474.458233] e1000e 0000:00:19.0 eno1: NIC Link is Down
>> ```
>>
>> Removing and loading the module *e1000e* did not help. Suspending and 
>> resume did not either. Only powering off the system (maybe restart 
>> would have worked too).
>>
>> The 8 MB output of `dmesg` (still missing the early messages) [1] 
>> contains more lines from the subsequent tries.
>>
>> It only happened once, and I am unable to reproduce it.
>>
>>
>> Kind regards,
>>
>> Paul
>>
>>
>> [1]: https://owww.molgen.mpg.de/~pmenzel/linux-5.19.6--messages.txt
--------------U26DupcPsJrIPHqh0aVUPDXE
Content-Type: text/plain; charset=UTF-8; name="lspci-s0190-vvv.txt"
Content-Disposition: attachment; filename="lspci-s0190-vvv.txt"
Content-Transfer-Encoding: base64

MDA6MTkuMCBFdGhlcm5ldCBjb250cm9sbGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiBFdGhlcm5l
dCBDb25uZWN0aW9uICgzKSBJMjE4LUxNIChyZXYgMDMpCglEZXZpY2VOYW1lOiAgT25ib2Fy
ZCBMQU4KCVN1YnN5c3RlbTogRGVsbCBFdGhlcm5ldCBDb25uZWN0aW9uICgzKSBJMjE4LUxN
CglDb250cm9sOiBJL08tIE1lbSsgQnVzTWFzdGVyKyBTcGVjQ3ljbGUtIE1lbVdJTlYtIFZH
QVNub29wLSBQYXJFcnItIFN0ZXBwaW5nLSBTRVJSLSBGYXN0QjJCLSBEaXNJTlR4KwoJU3Rh
dHVzOiBDYXArIDY2TUh6LSBVREYtIEZhc3RCMkItIFBhckVyci0gREVWU0VMPWZhc3QgPlRB
Ym9ydC0gPFRBYm9ydC0gPE1BYm9ydC0gPlNFUlItIDxQRVJSLSBJTlR4LQoJTGF0ZW5jeTog
MAoJSW50ZXJydXB0OiBwaW4gQSByb3V0ZWQgdG8gSVJRIDQ3CglJT01NVSBncm91cDogNQoJ
UmVnaW9uIDA6IE1lbW9yeSBhdCBmNzIwMDAwMCAoMzItYml0LCBub24tcHJlZmV0Y2hhYmxl
KSBbc2l6ZT0xMjhLXQoJUmVnaW9uIDE6IE1lbW9yeSBhdCBmNzI0MzAwMCAoMzItYml0LCBu
b24tcHJlZmV0Y2hhYmxlKSBbc2l6ZT00S10KCVJlZ2lvbiAyOiBJL08gcG9ydHMgYXQgZjA4
MCBbZGlzYWJsZWRdIFtzaXplPTMyXQoJQ2FwYWJpbGl0aWVzOiBbYzhdIFBvd2VyIE1hbmFn
ZW1lbnQgdmVyc2lvbiAyCgkJRmxhZ3M6IFBNRUNsay0gRFNJKyBEMS0gRDItIEF1eEN1cnJl
bnQ9MG1BIFBNRShEMCssRDEtLEQyLSxEM2hvdCssRDNjb2xkKykKCQlTdGF0dXM6IEQwIE5v
U29mdFJzdC0gUE1FLUVuYWJsZS0gRFNlbD0wIERTY2FsZT0xIFBNRS0KCUNhcGFiaWxpdGll
czogW2QwXSBNU0k6IEVuYWJsZSsgQ291bnQ9MS8xIE1hc2thYmxlLSA2NGJpdCsKCQlBZGRy
ZXNzOiAwMDAwMDAwMGZlZTAwMmY4ICBEYXRhOiAwMDAwCglDYXBhYmlsaXRpZXM6IFtlMF0g
UENJIEFkdmFuY2VkIEZlYXR1cmVzCgkJQUZDYXA6IFRQKyBGTFIrCgkJQUZDdHJsOiBGTFIt
CgkJQUZTdGF0dXM6IFRQLQoJS2VybmVsIGRyaXZlciBpbiB1c2U6IGUxMDAwZQoJS2VybmVs
IG1vZHVsZXM6IGUxMDAwZQoK
--------------U26DupcPsJrIPHqh0aVUPDXE
Content-Type: text/plain; charset=UTF-8; name="lspci-nn.txt"
Content-Disposition: attachment; filename="lspci-nn.txt"
Content-Transfer-Encoding: base64

MDA6MDAuMCBIb3N0IGJyaWRnZSBbMDYwMF06IEludGVsIENvcnBvcmF0aW9uIEJyb2Fkd2Vs
bC1VIEhvc3QgQnJpZGdlIC1PUEkgWzgwODY6MTYwNF0gKHJldiAwOSkKMDA6MDIuMCBWR0Eg
Y29tcGF0aWJsZSBjb250cm9sbGVyIFswMzAwXTogSW50ZWwgQ29ycG9yYXRpb24gSEQgR3Jh
cGhpY3MgNTUwMCBbODA4NjoxNjE2XSAocmV2IDA5KQowMDowMy4wIEF1ZGlvIGRldmljZSBb
MDQwM106IEludGVsIENvcnBvcmF0aW9uIEJyb2Fkd2VsbC1VIEF1ZGlvIENvbnRyb2xsZXIg
WzgwODY6MTYwY10gKHJldiAwOSkKMDA6MDQuMCBTaWduYWwgcHJvY2Vzc2luZyBjb250cm9s
bGVyIFsxMTgwXTogSW50ZWwgQ29ycG9yYXRpb24gQnJvYWR3ZWxsLVUgUHJvY2Vzc29yIFRo
ZXJtYWwgU3Vic3lzdGVtIFs4MDg2OjE2MDNdIChyZXYgMDkpCjAwOjE0LjAgVVNCIGNvbnRy
b2xsZXIgWzBjMDNdOiBJbnRlbCBDb3Jwb3JhdGlvbiBXaWxkY2F0IFBvaW50LUxQIFVTQiB4
SENJIENvbnRyb2xsZXIgWzgwODY6OWNiMV0gKHJldiAwMykKMDA6MTYuMCBDb21tdW5pY2F0
aW9uIGNvbnRyb2xsZXIgWzA3ODBdOiBJbnRlbCBDb3Jwb3JhdGlvbiBXaWxkY2F0IFBvaW50
LUxQIE1FSSBDb250cm9sbGVyICMxIFs4MDg2OjljYmFdIChyZXYgMDMpCjAwOjE5LjAgRXRo
ZXJuZXQgY29udHJvbGxlciBbMDIwMF06IEludGVsIENvcnBvcmF0aW9uIEV0aGVybmV0IENv
bm5lY3Rpb24gKDMpIEkyMTgtTE0gWzgwODY6MTVhMl0gKHJldiAwMykKMDA6MWIuMCBBdWRp
byBkZXZpY2UgWzA0MDNdOiBJbnRlbCBDb3Jwb3JhdGlvbiBXaWxkY2F0IFBvaW50LUxQIEhp
Z2ggRGVmaW5pdGlvbiBBdWRpbyBDb250cm9sbGVyIFs4MDg2OjljYTBdIChyZXYgMDMpCjAw
OjFjLjAgUENJIGJyaWRnZSBbMDYwNF06IEludGVsIENvcnBvcmF0aW9uIFdpbGRjYXQgUG9p
bnQtTFAgUENJIEV4cHJlc3MgUm9vdCBQb3J0ICMxIFs4MDg2OjljOTBdIChyZXYgZTMpCjAw
OjFjLjMgUENJIGJyaWRnZSBbMDYwNF06IEludGVsIENvcnBvcmF0aW9uIFdpbGRjYXQgUG9p
bnQtTFAgUENJIEV4cHJlc3MgUm9vdCBQb3J0ICM0IFs4MDg2OjljOTZdIChyZXYgZTMpCjAw
OjFkLjAgVVNCIGNvbnRyb2xsZXIgWzBjMDNdOiBJbnRlbCBDb3Jwb3JhdGlvbiBXaWxkY2F0
IFBvaW50LUxQIFVTQiBFSENJIENvbnRyb2xsZXIgWzgwODY6OWNhNl0gKHJldiAwMykKMDA6
MWYuMCBJU0EgYnJpZGdlIFswNjAxXTogSW50ZWwgQ29ycG9yYXRpb24gV2lsZGNhdCBQb2lu
dC1MUCBMUEMgQ29udHJvbGxlciBbODA4Njo5Y2MzXSAocmV2IDAzKQowMDoxZi4yIFNBVEEg
Y29udHJvbGxlciBbMDEwNl06IEludGVsIENvcnBvcmF0aW9uIFdpbGRjYXQgUG9pbnQtTFAg
U0FUQSBDb250cm9sbGVyIFtBSENJIE1vZGVdIFs4MDg2OjljODNdIChyZXYgMDMpCjAwOjFm
LjMgU01CdXMgWzBjMDVdOiBJbnRlbCBDb3Jwb3JhdGlvbiBXaWxkY2F0IFBvaW50LUxQIFNN
QnVzIENvbnRyb2xsZXIgWzgwODY6OWNhMl0gKHJldiAwMykKMDE6MDAuMCBTRCBIb3N0IGNv
bnRyb2xsZXIgWzA4MDVdOiBPMiBNaWNybywgSW5jLiBTRC9NTUMgQ2FyZCBSZWFkZXIgQ29u
dHJvbGxlciBbMTIxNzo4NTIwXSAocmV2IDAxKQowMjowMC4wIE5ldHdvcmsgY29udHJvbGxl
ciBbMDI4MF06IEludGVsIENvcnBvcmF0aW9uIFdpcmVsZXNzIDcyNjUgWzgwODY6MDk1YV0g
KHJldiA1OSkK

--------------U26DupcPsJrIPHqh0aVUPDXE
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--------------U26DupcPsJrIPHqh0aVUPDXE--
