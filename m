Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEF12D30E8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 18:24:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 74068874E4;
	Tue,  8 Dec 2020 17:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bPBD3bAVRnOx; Tue,  8 Dec 2020 17:24:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9692D875CF;
	Tue,  8 Dec 2020 17:24:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 682491BF841
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 17:24:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5E95487098
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 17:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aYLEZf7Oy4gu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 17:24:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com
 [148.163.133.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9C21C87094
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 17:24:20 +0000 (UTC)
Received: from pps.filterd (m0170392.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0B8HHGgY005717
 for <intel-wired-lan@lists.osuosl.org>; Tue, 8 Dec 2020 12:24:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=smtpout1;
 bh=6pwVA+zAX3guBHyruQ0OaiSMpzrQ0K5rhts4w8FvW2I=;
 b=TrMOLDOIl8QAV70dNBkGH7FZr3DXx+PLluUZpYe4+Y3p1cdTfxLwz1qJgwU6e6xZcixI
 slLkQPXV4ITxhV4BbKBgr3yUeAHSSmyygw2hPWoPmQHy9cfB/1FhFoplwyyRvu/BzET+
 GIIYJkadJDZ+X7NwGuHAVyMHLF+0TAK8AT4g0PCIdG3dBGf4p02NDankVkjCBGCMy+l1
 7+hWFgbjCgwjf9VS5dHmOY57KFzs8smFLenzkubKK9+PQAnKIyyq73UVH5cyj3AP9Kzc
 yztUq9Wg0rINElvH3lpaRAQDMP6rKaKOfVXbvmDpYsvMdzy45yXj8p86HK6ViRevsvoT qQ== 
Received: from mx0a-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 3587suk8du-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Dec 2020 12:24:19 -0500
Received: from pps.filterd (m0089484.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0B8HJeNw044771
 for <intel-wired-lan@lists.osuosl.org>; Tue, 8 Dec 2020 12:24:19 -0500
Received: from ausxippc110.us.dell.com (AUSXIPPC110.us.dell.com
 [143.166.85.200])
 by mx0b-00154901.pphosted.com with ESMTP id 35ad7s16cd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Dec 2020 12:24:18 -0500
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.78,403,1599541200"; d="scan'208";a="1017279786"
To: Mario Limonciello <mario.limonciello@dell.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Miller <davem@davemloft.net>
References: <20201204200920.133780-1-mario.limonciello@dell.com>
 <20201204200920.133780-2-mario.limonciello@dell.com>
From: Mario Limonciello <Mario.Limonciello@dell.com>
Organization: Dell Inc.
Message-ID: <354075ae-f605-eb01-4cf9-a66e4eb7b192@dell.com>
Date: Tue, 8 Dec 2020 11:24:17 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20201204200920.133780-2-mario.limonciello@dell.com>
Content-Language: en-GB
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-08_14:2020-12-08,
 2020-12-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 mlxlogscore=999 impostorscore=0 malwarescore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 mlxscore=0 bulkscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012080106
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 phishscore=0
 malwarescore=0 adultscore=0 bulkscore=0 mlxscore=0 mlxlogscore=999
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012080106
Subject: Re: [Intel-wired-lan] [PATCH v3 1/7] e1000e: fix S0ix flow to allow
 S0i3.2 subset entry
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, linux-kernel@vger.kernel.org, anthony.wong@canonical.com,
 Yijun.Shen@dell.com, Jakub Kicinski <kuba@kernel.org>,
 Stefan Assmann <sassmann@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDEyLzQvMjAgMjowOSBQTSwgTWFyaW8gTGltb25jaWVsbG8gd3JvdGU6Cj4gRnJvbTogVml0
YWx5IExpZnNoaXRzIDx2aXRhbHkubGlmc2hpdHNAaW50ZWwuY29tPgo+Cj4gQ2hhbmdlZCBhIGNv
bmZpZ3VyYXRpb24gaW4gdGhlIGZsb3dzIHRvIGFsaWduIHdpdGgKPiBhcmNoaXRlY3R1cmUgcmVx
dWlyZW1lbnRzIHRvIGFjaGlldmUgUzBpMy4yIHN1YnN0YXRlLgo+Cj4gQWxzbyBmaXhlZCBhIHR5
cG8gaW4gdGhlIHByZXZpb3VzIGNvbW1pdCA2MzJmYmQ1ZWI1YjAKPiAoImUxMDAwZTogZml4IFMw
aXggZmxvd3MgZm9yIGNhYmxlIGNvbm5lY3RlZCBjYXNlIikuCj4KPiBTaWduZWQtb2ZmLWJ5OiBW
aXRhbHkgTGlmc2hpdHMgPHZpdGFseS5saWZzaGl0c0BpbnRlbC5jb20+Cj4gVGVzdGVkLWJ5OiBB
YXJvbiBCcm93biA8YWFyb24uZi5icm93bkBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVG9u
eSBOZ3V5ZW4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIHwgOCArKysrLS0tLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCkkgcmVhbGl6ZSB0aGF0
IHRoZSBzZXJpZXMgaXMgc3RpbGwgdW5kZXIgZGlzY3Vzc2lvbiwgYnV0IEkgaW50ZW50aW9uYWxs
eSAKbW92ZWQgdGhpcwpwYXRjaCB0byB0aGUgZnJvbnQgb2YgdGhlIHNlcmllcyBzbyBpdCBjYW4g
YmUgcHVsbGVkIGluIGV2ZW4gaWYgdGhlIApvdGhlcnMgYXJlIHN0aWxsCmRpc2N1c3NlZC4KCkBE
YXZpZCBNaWxsZXI6ClRoaXMgcGFydGljdWxhciBwYXRjaCBpcyBtb3JlIGltcG9ydGFudCB0aGFu
IHRoZSByZXN0LsKgIEl0IGFjdHVhbGx5IApmaXhlcyBpc3N1ZXMKb24gdGhlIG5vbi1NRSBpMjE5
ViBhcyB3ZWxsLsKgIENhbiB0aGlzIG9uZSBiZSBxdWV1ZWQgdXAgYW5kIHdlIGNhbiBrZWVwCmRp
c2N1c3NpbmcgdGhlIHJlc3Q/Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9lMTAwMGUvbmV0ZGV2LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
bmV0ZGV2LmMKPiBpbmRleCBiMzBmMDA4OTFjMDMuLjEyOGFiNjg5ODA3MCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPiBAQCAtNjQ3NSwxMyArNjQ3
NSwxMyBAQCBzdGF0aWMgdm9pZCBlMTAwMGVfczBpeF9lbnRyeV9mbG93KHN0cnVjdCBlMTAwMF9h
ZGFwdGVyICphZGFwdGVyKQo+ICAgCj4gICAJLyogVW5nYXRlIFBHQ0IgY2xvY2sgKi8KPiAgIAlt
YWNfZGF0YSA9IGVyMzIoRkVYVE5WTTkpOwo+IC0JbWFjX2RhdGEgfD0gQklUKDI4KTsKPiArCW1h
Y19kYXRhICY9IH5CSVQoMjgpOwo+ICAgCWV3MzIoRkVYVE5WTTksIG1hY19kYXRhKTsKPiAgIAo+
ICAgCS8qIEVuYWJsZSBLMSBvZmYgdG8gZW5hYmxlIG1QSFkgUG93ZXIgR2F0aW5nICovCj4gICAJ
bWFjX2RhdGEgPSBlcjMyKEZFWFROVk02KTsKPiAgIAltYWNfZGF0YSB8PSBCSVQoMzEpOwo+IC0J
ZXczMihGRVhUTlZNMTIsIG1hY19kYXRhKTsKPiArCWV3MzIoRkVYVE5WTTYsIG1hY19kYXRhKTsK
PiAgIAo+ICAgCS8qIEVuYWJsZSBtUEhZIHBvd2VyIGdhdGluZyBmb3IgYW55IGxpbmsgYW5kIHNw
ZWVkICovCj4gICAJbWFjX2RhdGEgPSBlcjMyKEZFWFROVk04KTsKPiBAQCAtNjUyNSwxMSArNjUy
NSwxMSBAQCBzdGF0aWMgdm9pZCBlMTAwMGVfczBpeF9leGl0X2Zsb3coc3RydWN0IGUxMDAwX2Fk
YXB0ZXIgKmFkYXB0ZXIpCj4gICAJLyogRGlzYWJsZSBLMSBvZmYgKi8KPiAgIAltYWNfZGF0YSA9
IGVyMzIoRkVYVE5WTTYpOwo+ICAgCW1hY19kYXRhICY9IH5CSVQoMzEpOwo+IC0JZXczMihGRVhU
TlZNMTIsIG1hY19kYXRhKTsKPiArCWV3MzIoRkVYVE5WTTYsIG1hY19kYXRhKTsKPiAgIAo+ICAg
CS8qIERpc2FibGUgVW5nYXRlIFBHQ0IgY2xvY2sgKi8KPiAgIAltYWNfZGF0YSA9IGVyMzIoRkVY
VE5WTTkpOwo+IC0JbWFjX2RhdGEgJj0gfkJJVCgyOCk7Cj4gKwltYWNfZGF0YSB8PSBCSVQoMjgp
Owo+ICAgCWV3MzIoRkVYVE5WTTksIG1hY19kYXRhKTsKPiAgIAo+ICAgCS8qIENhbmNlbCBub3Qg
d2FraW5nIGZyb20gZHluYW1pYwotLSAKKk1hcmlvIExpbW9uY2llbGxvKgoqRGVsbCp8IENQRyBT
b2Z0d2FyZSBFbmdpbmVlcmluZwoqb2ZmaWNlKisxIDUxMiA3MjMgMDU4MgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
