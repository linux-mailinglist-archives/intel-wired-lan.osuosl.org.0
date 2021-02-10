Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 386E13173B1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Feb 2021 23:52:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6FF086B01;
	Wed, 10 Feb 2021 22:52:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GHInCCKfreyy; Wed, 10 Feb 2021 22:52:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A1EE086BC2;
	Wed, 10 Feb 2021 22:52:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E6CC21BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 22:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DBC8B8746A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 22:52:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P0btmMXC9rOM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Feb 2021 22:52:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C2A9187463
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 22:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612997563;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kbXnKbActLkOzW45Fps8fZcqp5iVTpGTxfbhqZgSHfg=;
 b=XPLUe8+9tfsgXJxuq72RX2xFXavfHs4mKygxN+/CrP1T7BktHdhgEHcGVYzNwq6wVD1is3
 cuj5/CpRvDXeAYWXpCZFYt6/f0j2HRRTjGeciXmDQ6bj2RGLxbfLXPtB7fRnD3WrgwuGfj
 UGT3/4iX61UT2BN83cL4MOwis6HbD34=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-247-BbJzJ_6iMXSwqSmhfIg0mw-1; Wed, 10 Feb 2021 17:52:41 -0500
X-MC-Unique: BbJzJ_6iMXSwqSmhfIg0mw-1
Received: by mail-ej1-f71.google.com with SMTP id jz15so3823880ejc.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 14:52:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=MTOZimiXv3MyLyighqxuqoNvd3oB6X1OJT8JBba17+s=;
 b=SUJ1cuSXPoLUS2UoSc2ky7aYEdBcMht+rtlkdFejUCKw1cs2ldF5ODGyCAbL9C8Z2t
 W7n1gjYsPTnjJTSNXtkGoW/FNNINo3Tha5TpKL+Cc/ej55/wJBZDbEhiOvJ/6W46A7ba
 r3qI/PTzgdSelLbzVQa/Axbu9Ix8FGig8aoBcXealvhlnhNzPn5uE4O4v+Faobx1kEwh
 SkSVHuBvfiPxPBytHhOMZejyuhh0Cd6aFfCitJo1yHdfxOKhu1DOxWdOV3xJ0un/6cD2
 BwmdjjPVrDOJ8TLSXY5N0R5U2F4yQxstEYNLjAhktpPHchnLP78A1Homi6uil0nDtArS
 bgIw==
X-Gm-Message-State: AOAM531vlT6nhqNBUNIpelcQXFwisHXU6FK7QuPzPwCEsFsNXeUdTZ90
 p7+LaVgCWUXihwijfBMXvf5adUAM8DSWARX3D0eCl3E18SenqSdFfxDYP6iAHi+WiHSw7KFFYeP
 4++lm0TzrmKkh+EjlCb9qxvDv/kS9uQ==
X-Received: by 2002:a17:906:a0c:: with SMTP id
 w12mr5179890ejf.211.1612997560489; 
 Wed, 10 Feb 2021 14:52:40 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy8nXTYHN0PCcWqPkgUGMEtcSutowI+G41weA+o2ITB6saJfOw+D+6Caievxf13dP+9zOcQRA==
X-Received: by 2002:a17:906:a0c:: with SMTP id
 w12mr5179858ejf.211.1612997560224; 
 Wed, 10 Feb 2021 14:52:40 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id hy24sm2423526ejc.40.2021.02.10.14.52.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 14:52:39 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 563011804EE; Wed, 10 Feb 2021 23:52:39 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20210210103135.38921f85@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <5fd068c75b92d_50ce20814@john-XPS-13-9370.notmuch>
 <20201209095454.GA36812@ranger.igk.intel.com>
 <20201209125223.49096d50@carbon>
 <e1573338-17c0-48f4-b4cd-28eeb7ce699a@gmail.com>
 <1e5e044c8382a68a8a547a1892b48fb21d53dbb9.camel@kernel.org>
 <cb6b6f50-7cf1-6519-a87a-6b0750c24029@gmail.com>
 <f4eb614ac91ee7623d13ea77ff3c005f678c512b.camel@kernel.org>
 <d5be0627-6a11-9c1f-8507-cc1a1421dade@gmail.com>
 <6f8c23d4ac60525830399754b4891c12943b63ac.camel@kernel.org>
 <CAAOQfrHN1-oHmbOksDv-BKWv4gDF2zHZ5dTew6R_QTh6s_1abg@mail.gmail.com>
 <87h7mvsr0e.fsf@toke.dk>
 <CAAOQfrHA+-BsikeQzXYcK_32BZMbm54x5p5YhAiBj==uaZvG1w@mail.gmail.com>
 <87bld2smi9.fsf@toke.dk>
 <20210202113456.30cfe21e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAAOQfrGqcsn3wu5oxzHYxtE8iK3=gFdTka5HSh5Fe9Hc6HWRWA@mail.gmail.com>
 <20210203090232.4a259958@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <874kikry66.fsf@toke.dk>
 <20210210103135.38921f85@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 10 Feb 2021 23:52:39 +0100
Message-ID: <87czx7r0w8.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 1/5] net: ethtool: add xdp
 properties flag set
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Andrii Nakryiko <andrii.nakryiko@gmail.com>, hawk@kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>, Saeed Mahameed <saeed@kernel.org>,
 Marek Majtyka <alardam@gmail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 jeffrey.t.kirsher@intel.com, David Ahern <dsahern@gmail.com>,
 bpf <bpf@vger.kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "David S.
 Miller" <davem@davemloft.net>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOgoKPiBPbiBXZWQsIDEwIEZl
YiAyMDIxIDExOjUzOjUzICswMTAwIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4g
Pj4gSSBhbSBhIGJpdCBjb25mdXNlZCBub3cuIERpZCB5b3UgbWVhbiB2YWxpZGF0aW9uIHRlc3Rz
IG9mIHRob3NlIFhEUAo+PiA+PiBmbGFncywgd2hpY2ggSSBhbSB3b3JraW5nIG9uIG9yIHNvbWUg
b3RoZXIgdmFsaWRhdGlvbiB0ZXN0cz8KPj4gPj4gV2hhdCBzaG91bGQgdGhlc2UgdGVzdHMgdmVy
aWZ5PyBDYW4geW91IHBsZWFzZSBlbGFib3JhdGUgbW9yZSBvbiB0aGUKPj4gPj4gdG9waWMsIHBs
ZWFzZSAtIGp1c3QgYSBmZXcgc2VudGVuY2VzIGhvdyBhcmUgeW91IHNlZSBpdD8gIAo+PiA+Cj4+
ID4gQ29uZm9ybWFuY2UgdGVzdHMgY2FuIGJlIHdyaXR0ZW4gZm9yIGFsbCBmZWF0dXJlcywgd2hl
dGhlciB0aGV5IGhhdmUgCj4+ID4gYW4gZXhwbGljaXQgY2FwYWJpbGl0eSBpbiB0aGUgdUFQSSBv
ciBub3QuIEJ1dCBmb3IgdGhvc2UgdGhhdCBkbyBJTU8KPj4gPiB0aGUgdGVzdHMgc2hvdWxkIGJl
IHJlcXVpcmVkLgo+PiA+Cj4+ID4gTGV0IG1lIGdpdmUgeW91IGFuIGV4YW1wbGUuIFRoaXMgc2V0
IGFkZHMgYSBiaXQgdGhhdCBzYXlzIEludGVsIE5JQ3MgCj4+ID4gY2FuIGRvIFhEUF9UWCBhbmQg
WERQX1JFRElSRUNULCB5ZXQgd2UgYm90aCBrbm93IG9mIHRoZSBUeCBxdWV1ZQo+PiA+IHNoZW5h
bmlnYW5zLiBTbyBjYW4gaTQwZSBkbyBYRFBfUkVESVJFQ1Qgb3IgY2FuIGl0IG5vdD8KPj4gPgo+
PiA+IElmIHdlIGhhdmUgZXhoYXVzdGl2ZSBjb25mb3JtYW5jZSB0ZXN0cyB3ZSBjYW4gY29uZmlk
ZW50bHkgYW5zd2VyIHRoYXQKPj4gPiBxdWVzdGlvbi4gQW5kIHRoZSBhbnN3ZXIgbWF5IG5vdCBi
ZSAieWVzIiBvciAibm8iLCBpdCBtYXkgYWN0dWFsbHkgYmUKPj4gPiAid2UgbmVlZCBtb3JlIG9w
dGlvbnMgYmVjYXVzZSBtYW55IGltcGxlbWVudGF0aW9ucyBmYWxsIGluIGJldHdlZW4iLgo+PiA+
Cj4+ID4gSSB0aGluayByZWFkYWJsZSAoSU9XIG5vdCB3cml0dGVuIGluIHNvbWUgaW5zYW5lIERT
TCkgdGVzdHMgY2FuIGFsc28gCj4+ID4gYmUgdXNlZnVsIGZvciB1c2VycyB3aG8gd2FudCB0byBj
aGVjayB3aGljaCBmZWF0dXJlcyB0aGVpciBwcm9ncmFtIC8KPj4gPiBkZXBsb3ltZW50IHdpbGwg
cmVxdWlyZS4gIAo+PiAKPj4gV2hpbGUgSSBkbyBhZ3JlZSB0aGF0IHRoYXQga2luZCBvZiBjb25m
b3JtYW5jZSB0ZXN0IHdvdWxkIGJlIGdyZWF0LCBJCj4+IGRvbid0IHRoaW5rIGl0IGhhcyB0byBo
b2xkIHVwIHRoaXMgc2VyaWVzICh0aGUgcGVyZmVjdCBiZWluZyB0aGUgZW5lbXkKPj4gb2YgdGhl
IGdvb2QsIGFuZCBhbGwgdGhhdCkuIFdlIGhhdmUgYSByZWFsIHByb2JsZW0gdG9kYXkgdGhhdCB1
c2Vyc3BhY2UKPj4gY2FuJ3QgdGVsbCBpZiBhIGdpdmVuIGRyaXZlciBpbXBsZW1lbnRzLCBzYXks
IFhEUF9SRURJUkVDVCwgYW5kIHNvCj4+IHBlb3BsZSB0cnkgdG8gdXNlIGl0IGFuZCBzcGVuZCBk
YXlzIHdvbmRlcmluZyB3aGljaCBibGFjayBob2xlIHRoZWlyCj4+IHBhY2tldHMgZGlzYXBwZWFy
IGludG8uIEFuZCBmb3IgdGhpbmdzIGxpa2UgY29udGFpbmVyIG1pZ3JhdGlvbiB3ZSBuZWVkCj4+
IHRvIGJlIGFibGUgdG8gcHJlZGljdCB3aGV0aGVyIGEgZ2l2ZW4gaG9zdCBzdXBwb3J0cyBhIGZl
YXR1cmUgKmJlZm9yZSoKPj4gd2Ugc3RhcnQgdGhlIG1pZ3JhdGlvbiBhbmQgdHJ5IHRvIHVzZSBp
dC4KPgo+IFVubGVzcyB5b3UgaGF2ZSBhIHN0cm9uZyBkZWZpbml0aW9uIG9mIHdoYXQgWERQX1JF
RElSRUNUIG1lYW5zIHRoZSBmbGFnCj4gaXRzZWxmIGlzIG5vdCB3b3J0aCBtdWNoLiBXZSdyZSBu
b3QgdGFsa2luZyBhYm91dCBub3JtYWwgZXRodG9vbCBmZWF0dXJlCj4gZmxhZ3Mgd2hpY2ggYXJl
IHByaW1hcmlseSBzdGFjay1kcml2ZW4sIFhEUCBpcyBpbXBsZW1lbnRlZCBtb3N0bHkgYnkKPiB0
aGUgZHJpdmVyLCBlYWNoIHZlbmRvciBjYW4gZG8gdGhlaXIgb3duIHRoaW5nLiBNYXliZSBJJ3Zl
IHNlZW4gb25lCj4gdmVuZG9yIGluY29tcGF0aWJpbGl0eSB0b28gbWFueSBhdCBteSBkYXkgam9i
IHRvIGhvcGUgZm9yIHRoZSBiZXN0Li4uCgpJJ20gdG90YWxseSBvbiBib2FyZCB3aXRoIGRvY3Vt
ZW50aW5nIHdoYXQgYSBmZWF0dXJlIG1lYW5zLiBFLmcuLCBmb3IKWERQX1JFRElSRUNULCB3aGV0
aGVyIGl0J3MgYWNjZXB0YWJsZSB0byBmYWlsIHRoZSByZWRpcmVjdCBpbiBzb21lCnNpdHVhdGlv
bnMgZXZlbiB3aGVuIGl0J3MgYWN0aXZlLCBvciBpZiB0aGVyZSBzaG91bGQgYWx3YXlzIGJlIGEK
c2xvdy1wYXRoIGZhbGxiYWNrLgoKQnV0IEkgZGlzYWdyZWUgdGhhdCB0aGUgZmxhZyBpcyB3b3J0
aGxlc3Mgd2l0aG91dCBpdC4gUGVvcGxlIGFyZSBydW5uaW5nCmludG8gcmVhbCBpc3N1ZXMgd2l0
aCB0cnlpbmcgdG8gcnVuIFhEUF9SRURJUkVDVCBwcm9ncmFtcyBvbiBhIGRyaXZlcgp0aGF0IGRv
ZXNuJ3Qgc3VwcG9ydCBpdCBhdCBhbGwsIGFuZCBpdCdzIGluY3JlZGlibHkgY29uZnVzaW5nLiBU
aGUKbGF0ZXN0IGV4YW1wbGUgcG9wcGVkIHVwIGxpdGVyYWxseSB5ZXN0ZXJkYXk6CgpodHRwczov
L2xvcmUua2VybmVsLm9yZy94ZHAtbmV3Ymllcy9DQU0tc2NaUFBldTQ0RmVDUEdPPVF6PTAzQ3Jo
aGZCMUdkSjhGTkVwUHFQX0cyN2M2bVFAbWFpbC5nbWFpbC5jb20vCgo+PiBJIHZpZXcgdGhlIGZl
YXR1cmUgZmxhZ3MgYXMgYSBsaXN0IG9mIGZlYXR1cmVzICppbXBsZW1lbnRlZCogYnkgdGhlCj4+
IGRyaXZlci4gV2hpY2ggc2hvdWxkIGJlIHByZXR0eSBzdGF0aWMgaW4gYSBnaXZlbiBrZXJuZWws
IGJ1dCBtYXkgYmUKPj4gZGlmZmVyZW50IHRoYW4gdGhlIGZlYXR1cmVzIGN1cnJlbnRseSAqZW5h
YmxlZCogb24gYSBnaXZlbiBzeXN0ZW0gKGR1ZQo+PiB0bywgZS5nLiwgdGhlIFRYIHF1ZXVlIHN0
dWZmKS4KPgo+IEhtLCBtYXliZSBJJ20gbm90IGJlaW5nIGNsZWFyIGVub3VnaC4gVGhlIHdheSBY
RFBfUkVESVJFQ1QgKHlvdXIKPiBleGFtcGxlKSBpcyBpbXBsZW1lbnRlZCBhY3Jvc3MgZHJpdmVy
cyBkaWZmZXJzIGluIGEgbWVhbmluZ2Z1bCB3YXlzLiAKPiBIZW5jZSB0aGUgbmVlZCBmb3IgY29u
Zm9ybWFuY2UgdGVzdGluZy4gV2UgZG9uJ3QgaGF2ZSBhIGdvbGRlbiBTVwo+IHN0YW5kYXJkIHRv
IGZhbGwgYmFjayBvbiwgbGlrZSB3ZSBkbyB3aXRoIEhXIG9mZmxvYWRzLgoKSSdtIG5vdCBkaXNh
Z3JlZWluZyB0aGF0IHdlIG5lZWQgdG8gaGFybW9uaXNlIHdoYXQgImltcGxlbWVudGluZyBhCmZl
YXR1cmUiIG1lYW5zLiBNYXliZSBJJ20ganVzdCBub3Qgc3VyZSB3aGF0IHlvdSBtZWFuIGJ5ICJj
b25mb3JtYW5jZQp0ZXN0aW5nIj8gV2hhdCB3b3VsZCB0aGF0IGxvb2sgbGlrZSwgc3BlY2lmaWNh
bGx5PyBBIHNjcmlwdCBpbiBzZWxmdGVzdAp0aGF0IHNldHMgdXAgYSByZWRpcmVjdCBiZXR3ZWVu
IHR3byBpbnRlcmZhY2VzIHRoYXQgd2UgdGVsbCBwZW9wbGUgdG8KcnVuPyBPciB3aGF0PyBIb3cg
d291bGQgeW91IGNhdGNoLCBzYXksIHRoYXQgaXNzdWUgd2hlcmUgaWYgYSBtYWNoaW5lCmhhcyBt
b3JlIENQVXMgdGhhbiB0aGUgTklDIGhhcyBUWFFzIHRoaW5ncyBzdGFydCBmYWxsaW5nIGFwYXJ0
PwoKPiBBbHNvIElESyB3aHkgdGhvc2UgdGVzdHMgYXJlIGNvbnNpZGVyZWQgc3VjaCBhIGh1Z2Ug
YXNrLiBBcyBJIHNhaWQgbW9zdAo+IHZlbmRvcnMgcHJvYmFibHkgYWxyZWFkeSBoYXZlIHRoZW0s
IGFuZCBzbyBJJ2QgZ3Vlc3MgZG8gZ29vZCBkaXN0cm9zLgo+IFNvIGxldCdzIHdvcmsgdG9nZXRo
ZXIuCgpJIGd1ZXNzIHdoYXQgSSdtIGFmcmFpZCBvZiBpcyB0aGF0IHRoaXMgd2lsbCBlbmQgdXAg
ZGVsYXlpbmcgb3Igc3RhbGxpbmcKYSBmaXggZm9yIGEgbG9uZy1zdGFuZGluZyBpc3N1ZSAod2hp
Y2ggaXMgd2hhdCBJIGNvbnNpZGVyIHRoaXMgc2VyaWVzIGFzCnNob3duIGJ5IHRoZSBleGFtcGxl
IGFib3ZlKS4gTWF5YmUgeW91IGNhbiBhbGxldmlhdGUgdGhhdCBieSBleHBhbmRpbmcgYQpiaXQg
b24gd2hhdCB5b3UgbWVhbj8KCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
