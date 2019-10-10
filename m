Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE3DD1DC2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 02:54:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D274287C55;
	Thu, 10 Oct 2019 00:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QkUJw7B9ysrV; Thu, 10 Oct 2019 00:54:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91B3A84C23;
	Thu, 10 Oct 2019 00:54:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 983111BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2019 00:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9160D2048A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2019 00:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dCCRCk5z2eI6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Oct 2019 00:54:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00190b01.pphosted.com (mx0b-00190b01.pphosted.com
 [67.231.157.127])
 by silver.osuosl.org (Postfix) with ESMTPS id 7A2EF2047D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2019 00:54:28 +0000 (UTC)
Received: from pps.filterd (m0122330.ppops.net [127.0.0.1])
 by mx0b-00190b01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9A0qJ8u013485; Thu, 10 Oct 2019 01:54:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=jan2016.eng;
 bh=lrf8L8G2NzSWzWgb/tgnH00mlUfAWbKZY2H5RGGA9fI=;
 b=CUxjTXJ2OH5O0JjfcJ5Hsw7g81SaDTA42XUWWq7tK6xXtWdK9AieyLOdrNWP9BjjG0H5
 r8bdgKkgfdOedMFVyvSC0bpYt1EbNwumw5WnO19Q/5j6LuIGQclMmiQR7ThmKyPjw2DE
 obe5cCV7gJWjvnchsaQgc6GkoAdjKw2+x9c2eb8U7kYjX2DFM0gDEVzBw30x1AGW8CnA
 4uWCMLyXmdn03RrdW4DbFDkcNQyl7dmafnMS544pUXx+ujzGtPD0+pFylqjSz55F8Yi0
 /VTxvpUCqEj20wOB0LeU82UUs/4ZbiKtf3ybYoUmt2yzXfoZU6HMLzlLhSwSd/4+4h2I yQ== 
Received: from prod-mail-ppoint2 (prod-mail-ppoint2.akamai.com [184.51.33.19]
 (may be forged))
 by mx0b-00190b01.pphosted.com with ESMTP id 2vejtvdsf5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 10 Oct 2019 01:54:22 +0100
Received: from pps.filterd (prod-mail-ppoint2.akamai.com [127.0.0.1])
 by prod-mail-ppoint2.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x9A0lD2X027450; Wed, 9 Oct 2019 20:54:21 -0400
Received: from prod-mail-relay10.akamai.com ([172.27.118.251])
 by prod-mail-ppoint2.akamai.com with ESMTP id 2vepgwunqr-9;
 Wed, 09 Oct 2019 20:54:20 -0400
Received: from [0.0.0.0] (prod-ssh-gw02.sanmateo.corp.akamai.com
 [172.22.187.166])
 by prod-mail-relay10.akamai.com (Postfix) with ESMTP id AEC15206EE;
 Thu, 10 Oct 2019 00:54:19 +0000 (GMT)
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 willemb@google.com, intel-wired-lan@lists.osuosl.org
References: <1570658777-13459-1-git-send-email-johunt@akamai.com>
 <1570658777-13459-4-git-send-email-johunt@akamai.com>
 <5f4af1c5-c2d1-d643-3fb2-fe4bd0e7e8cf@intel.com>
From: Josh Hunt <johunt@akamai.com>
Message-ID: <0ecadb39-ef96-6802-55f5-f1d72f2132f2@akamai.com>
Date: Wed, 9 Oct 2019 17:54:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5f4af1c5-c2d1-d643-3fb2-fe4bd0e7e8cf@intel.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-09_11:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910100004
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-09_11:2019-10-08,2019-10-09 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 spamscore=0
 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 suspectscore=0
 mlxscore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910100005
Subject: Re: [Intel-wired-lan] [PATCH 3/3] i40e: Add UDP segmentation
 offload support
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
Cc: Alexander Duyck <alexander.h.duyck@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvOS8xOSA1OjM5IFBNLCBTYW11ZHJhbGEsIFNyaWRoYXIgd3JvdGU6Cj4gCj4gCj4gT24g
MTAvOS8yMDE5IDM6MDYgUE0sIEpvc2ggSHVudCB3cm90ZToKPj4gQmFzZWQgb24gYSBzZXJpZXMg
ZnJvbSBBbGV4YW5kZXIgRHV5Y2sgdGhpcyBjaGFuZ2UgYWRkcyBVRFAgc2VnbWVudGF0aW9uCj4+
IG9mZmxvYWQgc3VwcG9ydCB0byB0aGUgaTQwZSBkcml2ZXIuCj4+Cj4+IENDOiBBbGV4YW5kZXIg
RHV5Y2sgPGFsZXhhbmRlci5oLmR1eWNrQGludGVsLmNvbT4KPj4gQ0M6IFdpbGxlbSBkZSBCcnVp
am4gPHdpbGxlbWJAZ29vZ2xlLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogSm9zaCBIdW50IDxqb2h1
bnRAYWthbWFpLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV9tYWluLmMgfMKgIDEgKwo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfdHhyeC5jIHwgMTIgKysrKysrKysrLS0tCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwg
MTAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgCj4+IGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYwo+PiBpbmRleCA2MDMxMjIzZWFmYWIuLjU2
ZjhjNTJjYmJhMSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX21haW4uYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfbWFpbi5jCj4+IEBAIC0xMjkxMSw2ICsxMjkxMSw3IEBAIHN0YXRpYyBpbnQgaTQwZV9jb25m
aWdfbmV0ZGV2KHN0cnVjdCBpNDBlX3ZzaSAKPj4gKnZzaSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIE5FVElGX0ZfR1NPX0lQWElQNsKgwqDCoMKgwqDCoMKgIHwKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE5FVElGX0ZfR1NPX1VEUF9UVU5ORUzCoMKgwqAgfAo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTkVUSUZfRl9HU09fVURQX1RVTk5FTF9D
U1VNwqDCoMKgIHwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE5FVElGX0ZfR1NPX1VE
UF9MNMKgwqDCoMKgwqDCoMKgIHwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE5F
VElGX0ZfU0NUUF9DUkPCoMKgwqDCoMKgwqDCoCB8Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBORVRJRl9GX1JYSEFTSMKgwqDCoMKgwqDCoMKgIHwKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIE5FVElGX0ZfUlhDU1VNwqDCoMKgwqDCoMKgwqAgfAo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYyAKPj4gYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5jCj4+IGluZGV4IGUzZjI5
ZGM4YjI5MC4uMGIzMmYwNGE2MjU1IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2k0MGUvaTQwZV90eHJ4LmMKPj4gQEAgLTI5NjAsMTAgKzI5NjAsMTYgQEAgc3RhdGljIGlu
dCBpNDBlX3RzbyhzdHJ1Y3QgaTQwZV90eF9idWZmZXIgCj4+ICpmaXJzdCwgdTggKmhkcl9sZW4s
Cj4+IMKgwqDCoMKgwqAgLyogcmVtb3ZlIHBheWxvYWQgbGVuZ3RoIGZyb20gaW5uZXIgY2hlY2tz
dW0gKi8KPj4gwqDCoMKgwqDCoCBwYXlsZW4gPSBza2ItPmxlbiAtIGw0X29mZnNldDsKPj4gLcKg
wqDCoCBjc3VtX3JlcGxhY2VfYnlfZGlmZigmbDQudGNwLT5jaGVjaywgKF9fZm9yY2UgX193c3Vt
KWh0b25sKHBheWxlbikpOwo+PiAtwqDCoMKgIC8qIGNvbXB1dGUgbGVuZ3RoIG9mIHNlZ21lbnRh
dGlvbiBoZWFkZXIgKi8KPj4gLcKgwqDCoCAqaGRyX2xlbiA9IChsNC50Y3AtPmRvZmYgKiA0KSAr
IGw0X29mZnNldDsKPj4gK8KgwqDCoCBpZiAoc2tiLT5jc3VtX29mZnNldCA9PSBvZmZzZXRvZihz
dHJ1Y3QgdGNwaGRyLCBjaGVjaykpIHsKPiAKPiBJc24ndCBpdCBtb3JlIHJlbGV2YW50IHRvIGNo
ZWNrIGZvciBnc29fdHlwZSByYXRoZXIgdGhhbiBiYXNlIHRoaXMgb24gCj4gdGhlIGNzdW1fb2Zm
c2V0PwpUaGFua3MgU3JpZGhhciBmb3IgdGhlIHJldmlldy4gWWVhaCBJIHRoaW5rIHlvdSdyZSBy
aWdodC4gSSB3aWxsIGNoYW5nZSAKdGhpcyBvbiBhbGwgMyBwYXRjaGVzLgoKSm9zaApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
