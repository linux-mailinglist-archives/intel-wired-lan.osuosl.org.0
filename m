Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAA84FFA6A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Apr 2022 17:38:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A12DF83F32;
	Wed, 13 Apr 2022 15:38:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ssrbaEm41L8M; Wed, 13 Apr 2022 15:38:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88FDA83E12;
	Wed, 13 Apr 2022 15:38:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 476521BF41F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 15:37:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 41BDA40BA5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 15:37:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fRF9wNLh1S-c for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Apr 2022 15:37:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B0AA40BA0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 15:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649864274;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sLekYFBHk6vmdPrvSejYiiFxxEyq7KZDxaB/jClyyLg=;
 b=Q9NuiDQfo1O28IGZcMWr+BOv8SNFaVSadEL4dOtCwT25zAYpFXz0bWl9FK6PDhFZm+deBO
 u/N+qq8KtG5d5YLHcRGF1Qjz2vIzWt6kODBNexuatbNAizhXIw1Q72gNZ2r3kNbrlFCDrX
 n/lRl6ouxEVbh0QBNSlhmwfYsBS9lHI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-537-HI2ChDyCPO-K0g7Y-EmT8A-1; Wed, 13 Apr 2022 11:37:50 -0400
X-MC-Unique: HI2ChDyCPO-K0g7Y-EmT8A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0ECAB1014A6A;
 Wed, 13 Apr 2022 15:37:50 +0000 (UTC)
Received: from horn.redhat.com (unknown [10.40.193.222])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 524AC40D1B98;
 Wed, 13 Apr 2022 15:37:47 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 13 Apr 2022 17:37:45 +0200
Message-Id: <20220413153745.1125674-1-poros@redhat.com>
In-Reply-To: <20220412102753.670867-1-poros@redhat.com>
References: <20220412102753.670867-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Subject: [Intel-wired-lan] [PATCH v2] ice: wait 5 s for EMP reset after
 firmware flash
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
Cc: ivecera@redhat.com, pmenzel@molgen.mpg.de, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

V2UgbmVlZCB0byB3YWl0IDUgcyBmb3IgRU1QIHJlc2V0IGFmdGVyIGZpcm13YXJlIGZsYXNoLiBD
b2RlIHdhcyBleHRyYWN0ZWQKZnJvbSBPT1QgZHJpdmVyIChpY2UgdjEuOC4zIGRvd25sb2FkZWQg
ZnJvbSBzb3VyY2Vmb3JnZSkuIFdpdGhvdXQgdGhpcwp3YWl0LCBmd19hY3RpdmF0ZSBsZXQgY2Fy
ZCBpbiBpbmNvbnNpc3RlbnQgc3RhdGUgYW5kIHJlY292ZXJhYmxlIG9ubHkKYnkgc2Vjb25kIGZs
YXNoL2FjdGl2YXRlLiBGbGFzaCB3YXMgdGVzdGVkIG9uIHRoZXNlIGZ3J3M6CkZyb20gLT4gVG8K
IDMuMDAgLT4gMy4xMC8zLjIwCiAzLjEwIC0+IDMuMDAvMy4yMAogMy4yMCAtPiAzLjAwLzMuMTAK
ClJlcHJvZHVjZXI6Cltyb290QGhvc3Qgfl0jIGRldmxpbmsgZGV2IGZsYXNoIHBjaS8wMDAwOmNh
OjAwLjAgZmlsZSBFODEwX1hYVkRBNF9GSF9PX1NFQ19GV18xcDZwMXA5X05WTV8zcDEwX1BMRE1v
TUNUUF8wLjExXzgwMDBBRDdCLmJpbgpQcmVwYXJpbmcgdG8gZmxhc2gKW2Z3Lm1nbXRdIEVyYXNp
bmcKW2Z3Lm1nbXRdIEVyYXNpbmcgZG9uZQpbZncubWdtdF0gRmxhc2hpbmcgMTAwJQpbZncubWdt
dF0gRmxhc2hpbmcgZG9uZSAxMDAlCltmdy51bmRpXSBFcmFzaW5nCltmdy51bmRpXSBFcmFzaW5n
IGRvbmUKW2Z3LnVuZGldIEZsYXNoaW5nIDEwMCUKW2Z3LnVuZGldIEZsYXNoaW5nIGRvbmUgMTAw
JQpbZncubmV0bGlzdF0gRXJhc2luZwpbZncubmV0bGlzdF0gRXJhc2luZyBkb25lCltmdy5uZXRs
aXN0XSBGbGFzaGluZyAxMDAlCltmdy5uZXRsaXN0XSBGbGFzaGluZyBkb25lIDEwMCUKQWN0aXZh
dGUgbmV3IGZpcm13YXJlIGJ5IGRldmxpbmsgcmVsb2FkCltyb290QGhvc3Qgfl0jIGRldmxpbmsg
ZGV2IHJlbG9hZCBwY2kvMDAwMDpjYTowMC4wIGFjdGlvbiBmd19hY3RpdmF0ZQpyZWxvYWRfYWN0
aW9uc19wZXJmb3JtZWQ6CiAgICBmd19hY3RpdmF0ZQpbcm9vdEBob3N0IH5dIyBpcCBsaW5rIHNo
b3cgZW5zN2YwCjcxOiBlbnM3ZjA6IDxOTy1DQVJSSUVSLEJST0FEQ0FTVCxNVUxUSUNBU1QsVVA+
IG10dSAxNTAwIHFkaXNjIG1xIHN0YXRlIERPV04gbW9kZSBERUZBVUxUIGdyb3VwIGRlZmF1bHQg
cWxlbiAxMDAwCiAgICBsaW5rL2V0aGVyIGI0Ojk2OjkxOmRjOjcyOmUwIGJyZCBmZjpmZjpmZjpm
ZjpmZjpmZgogICAgYWx0bmFtZSBlbnAyMDJzMGYwCgpkbWVzZyBhZnRlciBmbGFzaDoKWyAgIDU1
LjEyMDc4OF0gaWNlOiBDb3B5cmlnaHQgKGMpIDIwMTgsIEludGVsIENvcnBvcmF0aW9uLgpbICAg
NTUuMjc0NzM0XSBpY2UgMDAwMDpjYTowMC4wOiBHZXQgUEhZIGNhcGFiaWxpdGllcyBmYWlsZWQg
c3RhdHVzID0gLTUsIGNvbnRpbnVpbmcgYW55d2F5ClsgICA1NS41Njk3OTddIGljZSAwMDAwOmNh
OjAwLjA6IFRoZSBERFAgcGFja2FnZSB3YXMgc3VjY2Vzc2Z1bGx5IGxvYWRlZDogSUNFIE9TIERl
ZmF1bHQgUGFja2FnZSB2ZXJzaW9uIDEuMy4yOC4wClsgICA1NS42MDM2MjldIGljZSAwMDAwOmNh
OjAwLjA6IEdldCBQSFkgY2FwYWJpbGl0eSBmYWlsZWQuClsgICA1NS42MDg5NTFdIGljZSAwMDAw
OmNhOjAwLjA6IGljZV9pbml0X252bV9waHlfdHlwZSBmYWlsZWQ6IC01ClsgICA1NS42NDczNDhd
IGljZSAwMDAwOmNhOjAwLjA6IFBUUCBpbml0IHN1Y2Nlc3NmdWwKWyAgIDU1LjY3NTUzNl0gaWNl
IDAwMDA6Y2E6MDAuMDogRENCIGlzIGVuYWJsZWQgaW4gdGhlIGhhcmR3YXJlLCBtYXggbnVtYmVy
IG9mIFRDcyBzdXBwb3J0ZWQgb24gdGhpcyBwb3J0IGFyZSA4ClsgICA1NS42ODUzNjVdIGljZSAw
MDAwOmNhOjAwLjA6IEZXIExMRFAgaXMgZGlzYWJsZWQsIERDQngvTExEUCBpbiBTVyBtb2RlLgpb
ICAgNTUuNjkyMTc5XSBpY2UgMDAwMDpjYTowMC4wOiBDb21taXQgRENCIENvbmZpZ3VyYXRpb24g
dG8gdGhlIGhhcmR3YXJlClsgICA1NS43MDEzODJdIGljZSAwMDAwOmNhOjAwLjA6IDEyNi4wMjQg
R2IvcyBhdmFpbGFibGUgUENJZSBiYW5kd2lkdGgsIGxpbWl0ZWQgYnkgMTYuMCBHVC9zIFBDSWUg
eDggbGluayBhdCAwMDAwOmM5OjAyLjAgKGNhcGFibGUgb2YgMjUyLjA0OCBHYi9zIHdpdGggMTYu
MCBHVC9zIFBDSWUgeDE2IGxpbmspClJlYm9vdCBkb2VzbuKAmXQgaGVscCwgb25seSBzZWNvbmQg
Zmxhc2gvYWN0aXZhdGUgd2l0aCBPT1Qgb3IgcGF0Y2hlZApkcml2ZXIgcHV0IGNhcmQgYmFjayBp
biBjb25zaXN0ZW50IHN0YXRlLgoKQWZ0ZXIgcGF0Y2g6Cltyb290QGhvc3Qgfl0jIGRldmxpbmsg
ZGV2IGZsYXNoIHBjaS8wMDAwOmNhOjAwLjAgZmlsZSBFODEwX1hYVkRBNF9GSF9PX1NFQ19GV18x
cDZwMXA5X05WTV8zcDEwX1BMRE1vTUNUUF8wLjExXzgwMDBBRDdCLmJpbgpQcmVwYXJpbmcgdG8g
Zmxhc2gKW2Z3Lm1nbXRdIEVyYXNpbmcKW2Z3Lm1nbXRdIEVyYXNpbmcgZG9uZQpbZncubWdtdF0g
Rmxhc2hpbmcgMTAwJQpbZncubWdtdF0gRmxhc2hpbmcgZG9uZSAxMDAlCltmdy51bmRpXSBFcmFz
aW5nCltmdy51bmRpXSBFcmFzaW5nIGRvbmUKW2Z3LnVuZGldIEZsYXNoaW5nIDEwMCUKW2Z3LnVu
ZGldIEZsYXNoaW5nIGRvbmUgMTAwJQpbZncubmV0bGlzdF0gRXJhc2luZwpbZncubmV0bGlzdF0g
RXJhc2luZyBkb25lCltmdy5uZXRsaXN0XSBGbGFzaGluZyAxMDAlCltmdy5uZXRsaXN0XSBGbGFz
aGluZyBkb25lIDEwMCUKQWN0aXZhdGUgbmV3IGZpcm13YXJlIGJ5IGRldmxpbmsgcmVsb2FkClty
b290QGhvc3Qgfl0jIGRldmxpbmsgZGV2IHJlbG9hZCBwY2kvMDAwMDpjYTowMC4wIGFjdGlvbiBm
d19hY3RpdmF0ZQpyZWxvYWRfYWN0aW9uc19wZXJmb3JtZWQ6CiAgICBmd19hY3RpdmF0ZQpbcm9v
dEBob3N0IH5dIyBpcCBsaW5rIHNob3cgZW5zN2YwCjE5OiBlbnM3ZjA6IDxCUk9BRENBU1QsTVVM
VElDQVNULFVQLExPV0VSX1VQPiBtdHUgMTUwMCBxZGlzYyBtcSBzdGF0ZSBVUCBtb2RlIERFRkFV
TFQgZ3JvdXAgZGVmYXVsdCBxbGVuIDEwMDAKICAgIGxpbmsvZXRoZXIgYjQ6OTY6OTE6ZGM6NzI6
ZTAgYnJkIGZmOmZmOmZmOmZmOmZmOmZmCiAgICBhbHRuYW1lIGVucDIwMnMwZjAKCnYyIGNoYW5n
ZXM6Ci0gZml4ZWQgZm9ybWF0IGlzc3VlcwotIGFkZGVkIGluZm8gYWJvdXQgZncgYW5kIE9PVCBk
cml2ZXIgdmVyc2lvbnMKLSBhZGRlZCB0aW1lIGluIHRoZSBjb21taXQgbWVzc2FnZSBzdW1tYXJ5
Ci0gYXBwZW5kZWQgdGhlIHVuaXQgdG8gdGhlIG1hY3JvIG5hbWUKCkZpeGVzOiAzOTllMjdkYmJk
OWU5NCAoImljZTogc3VwcG9ydCBpbW1lZGlhdGUgZmlybXdhcmUgYWN0aXZhdGlvbiB2aWEgZGV2
bGluayByZWxvYWQiKQpTaWduZWQtb2ZmLWJ5OiBQZXRyIE9yb3MgPHBvcm9zQHJlZGhhdC5jb20+
Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMgfCAzICsrKwog
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9tYWluLmMKaW5kZXggZDc2ODkyNTc4NWNhNzkuLjM4ODI1ZWQyZWNkMWRlIDEw
MDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYworKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwpAQCAtNjkzMSwxMiAr
NjkzMSwxNSBAQCBzdGF0aWMgdm9pZCBpY2VfcmVidWlsZChzdHJ1Y3QgaWNlX3BmICpwZiwgZW51
bSBpY2VfcmVzZXRfcmVxIHJlc2V0X3R5cGUpCiAKIAlkZXZfZGJnKGRldiwgInJlYnVpbGRpbmcg
UEYgYWZ0ZXIgcmVzZXRfdHlwZT0lZFxuIiwgcmVzZXRfdHlwZSk7CiAKKyNkZWZpbmUgSUNFX0VN
UF9SRVNFVF9TTEVFUF9NUyA1MDAwCiAJaWYgKHJlc2V0X3R5cGUgPT0gSUNFX1JFU0VUX0VNUFIp
IHsKIAkJLyogSWYgYW4gRU1QIHJlc2V0IGhhcyBvY2N1cnJlZCwgYW55IHByZXZpb3VzbHkgcGVu
ZGluZyBmbGFzaAogCQkgKiB1cGRhdGUgd2lsbCBoYXZlIGNvbXBsZXRlZC4gV2Ugbm8gbG9uZ2Vy
IGtub3cgd2hldGhlciBvcgogCQkgKiBub3QgdGhlIE5WTSB1cGRhdGUgRU1QIHJlc2V0IGlzIHJl
c3RyaWN0ZWQuCiAJCSAqLwogCQlwZi0+ZndfZW1wX3Jlc2V0X2Rpc2FibGVkID0gZmFsc2U7CisK
KwkJbXNsZWVwKElDRV9FTVBfUkVTRVRfU0xFRVBfTVMpOwogCX0KIAogCWVyciA9IGljZV9pbml0
X2FsbF9jdHJscShodyk7Ci0tIAoyLjM1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
