Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF154CC097
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Mar 2022 16:02:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13E7884132;
	Thu,  3 Mar 2022 15:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id snHGdOEfq32Q; Thu,  3 Mar 2022 15:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E16C284131;
	Thu,  3 Mar 2022 15:02:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C03471BF59E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 12:37:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B95CA83FB9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 12:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iUXGbD6nK1-c for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Mar 2022 12:37:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F3F0983F7D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 12:37:48 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 gj15-20020a17090b108f00b001bef86c67c1so4589249pjb.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Mar 2022 04:37:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FF/MJjppdIPbLAPuX69GDDcuetlfqDD+38vpsQJKjV4=;
 b=bORDDPjE3HJ8Q+lkuHUI9YXm2z2OfuiHyYo73LjCVUqKH+mzapaLyTx7j6vUSzodyH
 H1fbBW3W0VvnP5bKsE/Cw0qa3UKie6z+yV023jD/NJPLY9kKDIxXXIT7NvpcVUCfUtIs
 KFg6MVSLFINqOtsOfPJChC2DDL1HsjgJIQ8T87wI93Fz/8cIhc43z3LdnIXEJu5YqpzN
 mnmxIpvlp/TKF5EWx4k9hHupAU2T1e2iVIXLRuFiSvdgN4U8XMzx7dalBaWhuU90/nq+
 yD0rNidPjh7VKui8oE8v/Ywp+ZPTs/OvJCCqJBXBdG8sdbvMpiVPMu/2SHGpauCCE/Ok
 XUow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FF/MJjppdIPbLAPuX69GDDcuetlfqDD+38vpsQJKjV4=;
 b=Ib2vGUuEI3380XaDaf/sD3Cxg44KHhLVqHPKNikpZQ/tqrMxVrNXUHGDlfypMfza7/
 Stl5XEBN2CneDb24XzxNCn8Or3wwmMrD94cjvOyx9OvzuhufKk0qNAekjRiBGN3mJBuH
 LPDSbXj3ARbbipwE2YYZUiBeSdxGCiGzyUhSnJnGLtaUifGsI9178Nq7TNiMOBrx2CbG
 rLv6JOQm3JrUI/1PN91nBTFhh8EWTUTe5WjB1V4vfh2Fni/0Dzjvwt6oKPpO9wa4PJGx
 AMCsWIHAIPK0smN4rliCCGJrCp9WfjEyAG69pJWMNd+BSbGuqYLZbimak7D5RZmo80uk
 hwKA==
X-Gm-Message-State: AOAM531HhU3XrV18zNUQDDx2hBUpfTUutOBw1gWZAbI8I4P6dHzxDTPw
 kMw5mUf/QNkuR2nliYI+p68=
X-Google-Smtp-Source: ABdhPJwaQutGx29a4puPWhBgOBT74prgxxfsvHgGuVwO/yqGuQ+dVL8XCd59bWLeDERLYwR3js66yQ==
X-Received: by 2002:a17:903:22d0:b0:151:97f5:db54 with SMTP id
 y16-20020a17090322d000b0015197f5db54mr7837971plg.58.1646311068298; 
 Thu, 03 Mar 2022 04:37:48 -0800 (PST)
Received: from ubuntu.huawei.com ([119.3.119.19])
 by smtp.googlemail.com with ESMTPSA id
 t7-20020a17090a024700b001bf12386db4sm1483030pje.47.2022.03.03.04.37.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 04:37:47 -0800 (PST)
From: Xiaomeng Tong <xiam0nd.tong@gmail.com>
To: david.laight@aculab.com
Date: Thu,  3 Mar 2022 20:37:18 +0800
Message-Id: <20220303123718.12426-1-xiam0nd.tong@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <2d208771c50b4c6db4f43039e9d62851@AcuMS.aculab.com>
References: <2d208771c50b4c6db4f43039e9d62851@AcuMS.aculab.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 03 Mar 2022 15:01:47 +0000
Subject: Re: [Intel-wired-lan] [PATCH 2/6] treewide: remove using list
 iterator after loop body as a ptr
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
Cc: alsa-devel@alsa-project.org, kvm@vger.kernel.org, linux-iio@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, linux@rasmusvillemoes.dk,
 dri-devel@lists.freedesktop.org, c.giuffrida@vu.nl,
 amd-gfx@lists.freedesktop.org, torvalds@linux-foundation.org,
 samba-technical@lists.samba.org, linux1394-devel@lists.sourceforge.net,
 drbd-dev@lists.linbit.com, linux-arch@vger.kernel.org,
 linux-cifs@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-staging@lists.linux.dev, h.j.bos@vu.nl, jgg@ziepe.ca,
 intel-wired-lan@lists.osuosl.org, nouveau@lists.freedesktop.org,
 bcm-kernel-feedback-list@broadcom.com, dan.carpenter@oracle.com,
 linux-media@vger.kernel.org, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 bjohannesmeyer@gmail.com, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, christophe.jaillet@wanadoo.fr,
 jakobkoschel@gmail.com, v9fs-developer@lists.sourceforge.net,
 linux-tegra@vger.kernel.org, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 linux-sgx@vger.kernel.org, nathan@kernel.org, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 xiam0nd.tong@gmail.com, tipc-discussion@lists.sourceforge.net,
 linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-mediatek@lists.infradead.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, christian.koenig@amd.com, rppt@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiBGcm9tOiBYaWFvbWVuZyBUb25nCj4gPiBTZW50OiAwMyBNYXJjaCAyMDIyIDA3OjI3Cj4gPiAK
PiA+IE9uIFRodSwgMyBNYXIgMjAyMiAwNDo1ODoyMyArMDAwMCwgRGF2aWQgTGFpZ2h0IHdyb3Rl
Ogo+ID4gPiBvbiAzIE1hciAyMDIyIDEwOjI3OjI5ICswODAwLCBYaWFvbWVuZyBUb25nIHdyb3Rl
Ogo+ID4gPiA+IFRoZSBwcm9ibGVtIGlzIHRoZSBtaXMtdXNlIG9mIGl0ZXJhdG9yIG91dHNpZGUg
dGhlIGxvb3Agb24gZXhpdCwgYW5kCj4gPiA+ID4gdGhlIGl0ZXJhdG9yIHdpbGwgYmUgdGhlIEhF
QUQncyBjb250YWluZXJfb2YgcG9pbnRlciB3aGljaCBwb2ludGVycwo+ID4gPiA+IHRvIGEgdHlw
ZS1jb25mdXNlZCBzdHJ1Y3QuIFNpZGVub3RlOiBUaGUgKm1pcy11c2UqIGhlcmUgcmVmZXJzIHRv
Cj4gPiA+ID4gbWlzdGFrZWx5IGFjY2VzcyB0byBvdGhlciBtZW1iZXJzIG9mIHRoZSBzdHJ1Y3Qs
IGluc3RlYWQgb2YgdGhlCj4gPiA+ID4gbGlzdF9oZWFkIG1lbWJlciB3aGljaCBhY3V0YWxseSBp
cyB0aGUgdmFsaWQgSEVBRC4KPiA+ID4KPiA+ID4gVGhlIHByb2JsZW0gaXMgdGhhdCB0aGUgSEVB
RCdzIGNvbnRhaW5lcl9vZiBwb2ludGVyIHNob3VsZCBuZXZlcgo+ID4gPiBiZSBjYWxjdWxhdGVk
IGF0IGFsbC4KPiA+ID4gVGhpcyBpcyB3aGF0IGlzIGZ1bmRhbWVudGFsbHkgYnJva2VuIGFib3V0
IHRoZSBjdXJyZW50IGRlZmluaXRpb24uCj4gPiAKPiA+IFllcywgdGhlIHJ1bGUgaXMgInRoZSBI
RUFEJ3MgY29udGFpbmVyX29mIHBvaW50ZXIgc2hvdWxkIG5ldmVyIGJlCj4gPiBjYWxjdWxhdGVk
IGF0IGFsbCBvdXRzaWRlIHRoZSBsb29wIiwgYnV0IGhvdyBkbyB5b3UgbWFrZSBzdXJlIGV2ZXJ5
b25lCj4gPiBmb2xsb3dzIHRoaXMgcnVsZT8KPiA+IEV2ZXJ5b25lIG1ha2VzIG1pc3Rha2VzLCBi
dXQgd2UgY2FuIGVsaW1pbmF0ZSB0aGVtIGFsbCBmcm9tIHRoZSBiZWdpbm5pbmcKPiA+IHdpdGgg
dGhlIGhlbHAgb2YgY29tcGlsZXIgd2hpY2ggY2FuIGNhdGNoIHN1Y2ggdXNlLWFmdGVyLWxvb3Ag
dGhpbmdzLgo+ID4gCj4gPiA+ID4gSU9XLCB5b3Ugd291bGQgZGVyZWZlcmVuY2UgYSAoTlVMTCAr
IG9mZnNldF9vZl9tZW1iZXIpIGFkZHJlc3MgaGVyZS4KPiA+ID4KPiA+ID5XaGVyZT8KPiA+IAo+
ID4gSW4gdGhlIGNhc2Ugd2hlcmUgYSBkZXZlbG9wZXIgZG8gbm90IGZvbGxvd3MgdGhlIGFib3Zl
IHJ1bGUsIGFuZCBtaXN0YWtlbHkKPiA+IGFjY2VzcyBhIG5vbi1saXN0LWhlYWQgbWVtYmVyIG9m
IHRoZSBIRUFEJ3MgY29udGFpbmVyX29mIHBvaW50ZXIgb3V0c2lkZQo+ID4gdGhlIGxvb3AuIEZv
ciBleGFtcGxlOgo+ID4gICAgIHN0cnVjdCByZXF7Cj4gPiAgICAgICBpbnQgYTsKPiA+ICAgICAg
IHN0cnVjdCBsaXN0X2hlYWQgaDsKPiA+ICAgICB9Cj4gPiAgICAgc3RydWN0IHJlcSAqcjsKPiA+
ICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5KHIsIEhFQUQsIGgpIHsKPiA+ICAgICAgIGlmIChyLT5h
ID09IDB4MTApCj4gPiAgICAgICAgIGJyZWFrOwo+ID4gICAgIH0KPiA+ICAgICAvLyB0aGUgZGV2
ZWxvcGVyIG1hZGUgYSBtaXN0YWtlOiBoZSBkaWRuJ3QgdGFrZSB0aGlzIHNpdHVhdGlvbiBpbnRv
Cj4gPiAgICAgLy8gYWNjb3VudCB3aGVyZSBhbGwgZW50cmllcyBpbiB0aGUgbGlzdCBhcmUgKnIt
PmEgIT0gMHgxMCosIGFuZCBub3cKPiA+ICAgICAvLyB0aGUgciBpcyB0aGUgSEVBRCdzIGNvbnRh
aW5lcl9vZiBwb2ludGVyLgo+ID4gICAgIHItPmEgPSAweDIwOwo+ID4gVGh1cyB0aGUgInItPmEg
PSAweDIwIiB3b3VsZCBkZXJlZmVyZW5jZSBhIChOVUxMICsgb2Zmc2V0X29mX21lbWJlcikKPiA+
IGFkZHJlc3MgaGVyZS4KPiAKPiBUaGF0IGlzIGp1c3QgYSBidWcuCj4gTm8gZGlmZmVyZW50IHRv
IGZhaWxpbmcgdG8gY2hlY2sgYW55dGhpbmcgZWxzZSBtaWdodCAncmV0dXJuJwo+IGEgTlVMTCBw
b2ludGVyLgoKWWVzLCBidXQgaXTigJhzIGEgbWlzdGFrZSBldmVyeW9uZSBoYXMgbWFkZSBhbmQg
d2lsbCBtYWtlLCB3ZSBzaG91bGQgYXZvaWQKdGhpcyBhdCB0aGUgYmVnaW5uaW5nIHdpdGggdGhl
IGhlbHAgb2YgY29tcGlsZXIuCgo+IEJlY2F1c2UgaXQgaXMgYSBOVUxMIGRlcmVmZXJlbmNlIHlv
dSBmaW5kIG91dCBwcmV0dHkgcXVpY2tseS4KCkFGQUlL77yMTlVMTCBkZXJlZmVyZW5jZSBpcyBh
IHVuZGVmaW5lZCBiYWhhdmlvciwgY2FuIGNvbXBpbGVyIHF1aWNrbHkKY2F0Y2ggaXQ/IE9yIGl0
IGNhbiBvbmx5IGJlIGFwcGxpZWQgdG8gc29tZSBzaW1wbGUvcmVzdHJpY3RlZCBjYXNlcy4KCj4g
VGhlIGV4aXN0aW5nIGxvb3AgbGVhdmVzIHlvdSB3aXRoIGEgdmFsaWQgcG9pbnRlciB0byBzb21l
dGhpbmcKPiB0aGF0IGlzbid0IGEgbGlzdCBpdGVtLgo+IAo+ID4gPiA+IFBsZWFzZSByZW1pbmQg
bWUgaWYgaSBtaXNzZWQgc29tZXRoaW5nLCB0aGFua3MuCj4gPiA+ID4KPiA+ID4gPiBDYW4geW91
IHNoYXJlIHlvdXIgImFsdGVybmF0aXZlIGRlZmluaXRpb25zIiBkZXRhaWxzPyB0aGFua3MhCj4g
PiA+Cj4gPiA+IFRoZSBsb29wIHNob3VsZCBwcm9iYWJseSB1c2UgYXMgZXh0cmEgdmFyaWFibGUg
dGhhdCBwb2ludHMKPiA+ID4gdG8gdGhlICdsaXN0IG5vZGUnIGluIHRoZSBuZXh0IHN0cnVjdHVy
ZS4KPiA+ID4gU29tZXRoaW5nIGxpa2U6Cj4gPiA+IAlmb3IgKHh4eCAqaXRlciA9IGhlYWQtPm5l
eHQ7Cj4gPiA+IAkJaXRlciA9PSAmaGVhZCA/ICgoaXRlbSA9IE5VTEwpLDApIDogKChpdGVtID0g
bGlzdF9pdGVtKGl0ZXIpLDEpKTsKPiA+ID4gCQlpdGVyID0gaXRlbS0+bWVtYmVyLT5uZXh0KSB7
Cj4gPiA+IAkgICAuLi4KPiA+ID4gV2l0aCBhIGJpdCBvZiBjYXN0aW5nIHlvdSBjYW4gdXNlICdp
dGVtJyB0byBob2xkICdpdGVyJy4KPiA+IAo+ID4geW91IHN0aWxsIGNhbiBub3QgbWFrZSBzdXJl
IGV2ZXJ5b25lIGZvbGxvd3MgdGhpcyBydWxlOgo+ID4gImRvIG5vdCB1c2UgaXRlcmF0b3Igb3V0
c2lkZSB0aGUgbG9vcCIgd2l0aG91dCB0aGUgaGVscCBvZiBjb21waWxlciwKPiA+IGJlY2F1c2Ug
aXRlbSBpcyBkZWNsYXJlZCBvdXRzaWRlIHRoZSBsb29wLgo+IAo+IFRoYXQgb25lIGhhcyAnaXRl
cicgZGVmaW5lZCBpbiB0aGUgbG9vcC4KCk9oLCBzb3JyeSwgSSBtaXN1bmRlcnN0b29kLiBUaGVu
IHRoaXMgaXMgdGhlIHNhbWUgd2F5IHdpdGggbXkgd2F5IG9mCmxpc3RfZm9yX2VhY2hfZW50cnlf
aW5zaWRlKHBvcywgdHlwZSwgaGVhZCwgbWVtYmVyKSwgd2hpY2ggZGVjbGFyZQp0aGUgaXRlcmF0
b3IgaW5zaWRlIHRoZSBsb29wLgpZb3UgZ28gZnVydGhlciBhbmQgbWFrZSB0aGluZ3MgbGlrZSAi
JnBvcy0+bWVtYmVyID09IChoZWFkKSIgZ29lcyBhd2F5CnRvIGF2b2lkIGNhbGN1bGF0ZSB0aGUg
SEVBRCdzIGNvbnRhaW5lcl9vZiBwb2ludGVyLCBhbHRob3VnaCB0aGUKY2FsY3VsYXRpb24gaXMg
aGFybWxlc3MuCgo+IAo+ID4gQlRXLCB0byBhdm9pZCBhbWJpZ3VpdHnvvIx0aGUgImFsdGVybmF0
aXZlIGRlZmluaXRpb25zIiBoZXJlIGkgYXNrZWQgaXMKPiA+IHNvbWV0aGluZyBmcm9tIHlvdSBp
biB0aGlzIGNvbnRleHQ6Cj4gPiAiT1RPSCB0aGVyZSBtYXkgYmUgYWx0ZXJuYXRpdmUgZGVmaW5p
dGlvbnMgdGhhdCBjYW4gYmUgdXNlZCB0byBnZXQKPiA+IHRoZSBjb21waWxlciAob3Igb3RoZXIg
Y29tcGlsZXItbGlrZSB0b29scykgdG8gZGV0ZWN0IGJyb2tlbiBjb2RlLgo+ID4gRXZlbiBpZiB0
aGUgZGVmaW5pdGlvbiBjYW4ndCBwb3NzaWJseSBnZW5lcmF0ZSBhIHdvcmtpbmcga2Vycm5lbC4i
Cj4gCj4gSSB3YXMgdGhpbmtpbmcgb2Ygc29tZXRoaW5nIGxpa2U6Cj4gCWlmICgocG9zID0gbGlz
dF9maXJzdCkpLCAxKSBwb3MgPSBOVUxMIGVsc2UKPiBzbyB0aGF0IHVuY2hlY2tlZCBkZXJlZmVy
ZW5jZXMgYWZ0ZXIgdGhlIGxvb3Agd2lsbCBiZSBkZXRlY3RhYmxlCj4gYXMgTlVMTCBwb2ludGVy
IG9mZnNldHMgLSBidXQgdGhhdCBpbiBpdHNlbGYgaXNuJ3QgZW5vdWdoIHRvIGF2b2lkCj4gb3Ro
ZXIgd2FybmluZ3MuCj4gCgpEbyB5b3UgbWVhbiBwdXQgdGhpcyByaWdodCBhZnRlciB0aGUgbG9v
cCAoSSBjaGFuZ2VkIHNvbXRoaW5nIHRoYXQgaQpkbyBub3QgdW5kZXJzdGFuZCwgcGxlYXNlIGNv
cnJlY3QgbWUgaWYgaSBhbSB3b3JuZywgdGhhbmtzKToKICAgICAgIGlmIChwb3MgPT0gbGlzdF9m
aXJzdCkgcG9zID0gTlVMTDsgZWxzZQphbmQgY29tcGlsZXIgY2FuIGRldGVjdCB0aGUgZm9sbG93
aW5nIE5VTEwgZGVyZWZlcm5jZT8KQnV0IGlmIHRoZSBOVUxMIGRlcmVmZXJuY2UgaXMganVzdCBy
aWdodCBhZnRlciB0aGUgbG9vcCBvcmlnaW5hbGx5LAppdCB3aWxsIGJlIG1hc2tlZCBieSB0aGUg
KmVsc2UqIGtleXdvcmTjgIIKCj4gPiA+ID4gVGhlICJsaXN0X2Zvcl9lYWNoX2VudHJ5X2luc2lk
ZShwb3MsIHR5cGUsIGhlYWQsIG1lbWJlcikiIHdheSBtYWtlcwo+ID4gPiA+IHRoZSBpdGVyYXRv
ciBpbnZpc2lhYmxlIG91dHNpZGUgdGhlIGxvb3AsIGFuZCB3b3VsZCBiZSBjYXRjaGVkIGJ5Cj4g
PiA+ID4gY29tcGlsZXIgaWYgdXNlLWFmdGVyLWxvb3AgdGhpbmdzIGhhcHBlbmVkLgo+ID4gCj4g
PiA+IEl0IGlzIGFsc28gYSBjb21wZXRlIFBJVEEgZm9yIGFueXRoaW5nIGRvaW5nIGEgc2VhcmNo
Lgo+ID4gCj4gPiBZb3UgbWVhbiBpdCB3b3VsZCBiZSBhIGJ1cmRlbiBvbiBzZWFyY2g/IGNhbiB5
b3Ugc2hvdyBtZSBzb21lIGV4YW1wbGVzPwo+IAo+IFRoZSB3aG9sZSBidXNpbmVzcyBvZiBoYXZp
bmcgdG8gc2F2ZSB0aGUgcG9pbnRlciB0byB0aGUgbG9jYXRlZCBpdGVtCj4gYmVmb3JlIGJyZWFr
aW5nIHRoZSBsb29wLCByZW1lbWJlcmluZyB0byBoYXZlIHNldCBpdCB0byBOVUxMIGVhcmxpZXIg
ZXRjLgoKT2ssIGkgc2VlLiBBbmQgdGhlbiB5b3UgbmVlZCBwYXNzIGEgIml0ZW0iIHRvIHRoZSBs
aXN0X2Zvcl9lYWNoX2VudHJ5IG1hY3JvCmFzIGEgbmV3IGFyZ3VtZW50LgoKPiAKPiBJdCBpcyBz
byBtdWNoIGJldHRlciBpZiB5b3UgY2FuIGp1c3QgZG86Cj4gCQlpZiAoZm91bmQpCj4gCQkJYnJl
YWs7Cj4gCj4gCURhdmlkCgp0aGlzIGNvbmZ1c2VkIG1lLiB0aGlzIHdheSBpcyBiZXR0ZXIgb3Ig
dGhlICJzYXZlIHRoZSBwb2ludGVyIHRvIHRoZSBsb2NhdGVkIGl0ZW0KYmVmb3JlIGJyZWFraW5n
IHRoZSBsb29wIiBvbmU/CgotLQpYaWFvbWVuZyBUb25nCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
