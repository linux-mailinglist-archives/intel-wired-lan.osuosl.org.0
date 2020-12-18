Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE7B2DEBD7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Dec 2020 00:07:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D641C87A04;
	Fri, 18 Dec 2020 23:07:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xu9WwNBfIIqu; Fri, 18 Dec 2020 23:07:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D122B87A07;
	Fri, 18 Dec 2020 23:07:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 866EA1BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 23:07:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8271187A00
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 23:07:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NtUIGyYZET3V for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 23:07:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0A29A879FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 23:07:08 +0000 (UTC)
Received: from [192.168.254.6] (unknown [50.46.158.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 9857213C2B4;
 Fri, 18 Dec 2020 15:07:06 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 9857213C2B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1608332827;
 bh=TPaBylo2M5k+i285zp53psgiTbT2tMHYlSe/dmeBXEI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=YY9SuNxpj+J36FiryBivqVkJRgQihjUtXo1QBC19j8Hf+VNJKeNxwCFuGBl5pvjcQ
 PaPk60lyPvgaDinmYUpHnYaNmx4wi4AkvoXKfofuEF+KBgQJ/DGMPM4vM+QrBZCMcS
 jgTVTsHu2MFB7E38rqpEuwEVApEf9l6yjHBtsVAQ=
To: Paul Menzel <pmenzel@molgen.mpg.de>,
 Todd Fujinaka <todd.fujinaka@intel.com>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
Date: Fri, 18 Dec 2020 15:07:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
Content-Language: en-MW
Subject: Re: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
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
Cc: Greg KH <gregkh@linuxfoundation.org>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTIvMTgvMjAgMTE6NDMgQU0sIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIgVG9kZCwKPiAK
PiAKPiBBbSAxOC4xMi4yMCB1bSAyMDoyNyBzY2hyaWViIEZ1amluYWthLCBUb2RkOgo+PiBZZXMs
IGFuZCBJJ20gcGx1Z2dpbmcgdGhlIGhvbGUgaW4gdGhlIFJFQURNRSByaWdodCBub3cuIEhlcmUn
cyB0aGUgcHJvcG9zZWQgdGV4dDoKPj4KPj4gQWR2ZXJ0aXNlbWVudHMgZm9yIDIuNUcgYW5kIDVH
IG9uIHRoZSB4NTUwIHdlcmUgdHVybmVkIG9mZiBieSBkZWZhdWx0IGR1ZSB0bwo+PiBpbnRlcm9w
ZXJhYmlsaXR5IGlzc3VlcyB3aXRoIGNlcnRhaW4gc3dpdGNoZXMuIFRvIHR1cm4gdGhlbSBiYWNr
IG9uLCB1c2UKPj4KPj4gZXRodG9vbCAtcyA8ZXRoWD4gYWR2ZXJ0aXNlIE4KPj4KPj4gd2hlcmUg
TiBpcyBhIGNvbWJpbmF0aW9uIG9mIHRoZSBmb2xsb3dpbmcuCj4+Cj4+IDEwMGJhc2VURnVsbMKg
wqDCoCAweDAwOAo+PiAxMDAwYmFzZVRGdWxswqDCoCAweDAyMAo+PiAyNTAwYmFzZVRGdWxswqDC
oCAweDgwMDAwMDAwMDAwMAo+PiA1MDAwYmFzZVRGdWxswqDCoCAweDEwMDAwMDAwMDAwMDAKPj4g
MTAwMDBiYXNlVEZ1bGzCoCAweDEwMDAKPj4KPj4gRm9yIGV4YW1wbGUsIHRvIHR1cm4gb24gYWxs
IG1vZGVzOgo+PiBldGh0b29sIC1zIDxldGhYPiBhZHZlcnRpc2UgMHgxODAwMDAwMDAxMDI4Cj4+
Cj4+IEZvciBtb3JlIGRldGFpbHMgcGxlYXNlIHNlZSB0aGUgZXRodG9vbCBtYW4gcGFnZS4KPiAK
PiBXaGF0IGNvbW1pdCBpbnRyb2R1Y2VkIHRoaXMgcmVncmVzc2lvbi4gUGxlYXNlIGJlYXIgaW4g
bWluZCwgdGhhdCB0aGlzIGNvbnRyYWRpY3RzIExpbnV44oCZIG5vLXJlZ3Jlc3Npb24gcG9saWN5
LCBhbmQgdGhlIGNvbW1pdCBzaG91bGQgdGhlcmVmb3JlIGJlIHJldmVydGVkIGFzIAo+IHNvb24g
YXMgcG9zc2libGUuCgpMb29rcyBsaWtlIGl0IGlzIGF0IHRoZSBlbmQgb2YgdGhpcyBwYXRjaCwg
dGhvdWdoIHRoZSBkZXNjcmlwdGlvbiBkb2Vzbid0Cm1lbnRpb24gY2hhbmdpbmcgZGVmYXVsdHM6
CgpDb21taXQgYTI5NmQ2NjVlYWUxZThlYzY0NDU2ODNiZmI5OTljODg0MDU4NDI2YQpBdXRob3I6
IFJhZG9zbGF3IFR5bCA8cmFkb3NsYXd4LnR5bEBpbnRlbC5jb20+CkRhdGU6ICAgRnJpIEp1biAy
NiAxNToyODoxNCAyMDIwICswMjAwCgogICAgIGl4Z2JlOiBBZGQgZXRodG9vbCBzdXBwb3J0IHRv
IGVuYWJsZSAyLjUgYW5kIDUuMCBHYnBzIHN1cHBvcnQKCiAgICAgQWRkZWQgZnVsbCBzdXBwb3J0
IGZvciBuZXcgdmVyc2lvbiBFdGh0b29sIEFQSS4gTmV3IEFQSSBhbGxvdyB1c2UKICAgICAyNTAw
R2Jhc2UtVCBhbmQgNTAwMGJhc2UtVCBzdXBwb3J0ZWQgYW5kIGFkdmVydGlzZWQgbGluayBzcGVl
ZCBtb2Rlcy4KCiAgICAgU2lnbmVkLW9mZi1ieTogUmFkb3NsYXcgVHlsIDxyYWRvc2xhd3gudHls
QGludGVsLmNvbT4KICAgICBUZXN0ZWQtYnk6IEFuZHJldyBCb3dlcnMgPGFuZHJld3guYm93ZXJz
QGludGVsLmNvbT4KICAgICBTaWduZWQtb2ZmLWJ5OiBUb255IE5ndXllbiA8YW50aG9ueS5sLm5n
dXllbkBpbnRlbC5jb20+CgpUaGFua3MsCkJlbgoKPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4g
UGF1bAo+IAoKCi0tIApCZW4gR3JlZWFyIDxncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT4KQ2FuZGVs
YSBUZWNobm9sb2dpZXMgSW5jICBodHRwOi8vd3d3LmNhbmRlbGF0ZWNoLmNvbQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
