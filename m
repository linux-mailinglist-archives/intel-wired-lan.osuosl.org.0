Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3D7543653
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 17:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71C7A4250B;
	Wed,  8 Jun 2022 15:12:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GLo2oczzfgpF; Wed,  8 Jun 2022 15:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 547D9419B9;
	Wed,  8 Jun 2022 15:12:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F68E1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 15:12:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B6424014A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 15:12:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cuLn-jD7o9rX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 15:12:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7FF9140002
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 15:12:34 +0000 (UTC)
Received: from [192.168.0.7] (ip5f5aede4.dynamic.kabel-deutschland.de
 [95.90.237.228])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2837E61EA1923;
 Wed,  8 Jun 2022 17:12:31 +0200 (CEST)
Message-ID: <bfa0d5b9-78e7-f0ca-d3b2-a10e6abc91c2@molgen.mpg.de>
Date: Wed, 8 Jun 2022 17:12:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Jun Zhang <xuejun.zhang@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
References: <20220607235328.3430866-1-xuejun.zhang@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220607235328.3430866-1-xuejun.zhang@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix missing state logs
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKdW4sIGRlYXIgUHJ6ZW15c2xhdywKCgpBbSAwOC4wNi4yMiB1bSAwMTo1MyBzY2hyaWVi
IEp1biBaaGFuZzoKPiBGaXggZGVidWcgcHJpbnRzLCBieSBhZGRpbmcgbWlzc2luZyBzdGF0ZSBw
cmludHMuCgrigKYgdG8gc3RyaW5nIGNvbnZlcnNpb24gZnVuY3Rpb24uCgo+IEV4dGVuZCBpYXZm
X3N0YXRlX3N0ciBieSBzdHJpbmdzIGZvciBfX0lBVkZfSU5JVF9FWFRFTkRFRF9DQVBTIGFuZAo+
IF9fSUFWRl9JTklUX0NPTkZJR19BREFQVEVSLgo+IFdpdGhvdXQgdGhpcyBwYXRjaCwgd2hlbiBl
bmFibGluZyBkZWJ1ZyBwcmludHMgZm9yIGlhdmYuaCwgdXNlciB3aWxsCj4gc2VlOgoKUGxlYXNl
IGRvIG5vdCBicmVhayBsaW5lcywganVzdCBiZWNhdXNlIGEgc2VudGVuY2UgZW5kcywgb3IgYWRk
IGEgYmxhbmsgCmxpbmUgYmV0d2VlbiBwYXJhZ3JhcGhzLgoKPiBpYXZmIDAwMDA6MDY6MGUuMDog
c3RhdGUgdHJhbnNpdGlvbiBmcm9tOl9fSUFWRl9JTklUX0dFVF9SRVNPVVJDRVMgdG86X19JQVZG
X1VOS05PV05fU1RBVEUKPiBpYXZmIDAwMDA6MDY6MGUuMDogc3RhdGUgdHJhbnNpdGlvbiBmcm9t
Ol9fSUFWRl9VTktOT1dOX1NUQVRFIHRvOl9fSUFWRl9VTktOT1dOX1NUQVRFCgpBZGQgYSBGaXhl
czogdGFnPwoKPiBTaWduZWQtb2ZmLWJ5OiBQcnplbXlzbGF3IFBhdHlub3dza2kgPHByemVteXNs
YXd4LnBhdHlub3dza2lAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEp1biBaaGFuZyA8eHVl
anVuLnpoYW5nQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lhdmYvaWF2Zi5oIHwgNCArKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zi5o
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmLmgKPiBpbmRleCBmZGExMTk4
ZDJjMDAuLmNiY2YwYzcxMDA3MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pYXZmL2lhdmYuaAo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYv
aWF2Zi5oCj4gQEAgLTQ2NCw2ICs0NjQsMTAgQEAgc3RhdGljIGlubGluZSBjb25zdCBjaGFyICpp
YXZmX3N0YXRlX3N0cihlbnVtIGlhdmZfc3RhdGVfdCBzdGF0ZSkKPiAgIAkJcmV0dXJuICJfX0lB
VkZfSU5JVF9WRVJTSU9OX0NIRUNLIjsKPiAgIAljYXNlIF9fSUFWRl9JTklUX0dFVF9SRVNPVVJD
RVM6Cj4gICAJCXJldHVybiAiX19JQVZGX0lOSVRfR0VUX1JFU09VUkNFUyI7Cj4gKwljYXNlIF9f
SUFWRl9JTklUX0VYVEVOREVEX0NBUFM6Cj4gKwkJcmV0dXJuICJfX0lBVkZfSU5JVF9FWFRFTkRF
RF9DQVBTIjsKPiArCWNhc2UgX19JQVZGX0lOSVRfQ09ORklHX0FEQVBURVI6Cj4gKwkJcmV0dXJu
ICJfX0lBVkZfSU5JVF9DT05GSUdfQURBUFRFUiI7Cj4gICAJY2FzZSBfX0lBVkZfSU5JVF9TVzoK
PiAgIAkJcmV0dXJuICJfX0lBVkZfSU5JVF9TVyI7Cj4gICAJY2FzZSBfX0lBVkZfSU5JVF9GQUlM
RUQ6CgpSZXZpZXdlZC1ieTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4KCgpL
aW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
