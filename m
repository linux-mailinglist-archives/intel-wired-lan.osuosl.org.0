Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7582D9B5E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 16:47:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C0FFD86785;
	Mon, 14 Dec 2020 15:47:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YvHNuoc5Okjz; Mon, 14 Dec 2020 15:47:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C8DB87226;
	Mon, 14 Dec 2020 15:47:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 531591BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 476F9867AE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:47:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fOSq9UEKiEg8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 15:47:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com
 [209.85.219.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1856286785
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:47:45 +0000 (UTC)
Received: by mail-qv1-f66.google.com with SMTP id s6so7988871qvn.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 07:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IvP98dDrq1/PKtiH7hCEfLKCy7yk+zANVEOxxRPRQmc=;
 b=rSYnI2+lzpyzp7Deqn7Slc1nwxCRR2SLTDOXfmcH4ObrdVtnOLmTrlw99zKKZ/svQ+
 zXfNR4EsXdYrhkFk8xVcv7u/rVp5riMWlUdEaYPTjYDfbAPzmVj2Ix8JacYIOfn8O0m4
 nO+RxT0gnRQ78Hnh80fKv9Qrh3aId8Ib0LYsWt75Np33WMFFiDJ9DhdrjHxBHrGeYxDR
 UQSRA3H98c/+x1aKEwj79DKWkZP6V6gTYfLClfvJkGmam0daArLG0qYVCOlziSl0m0r+
 fcrsOGOJJxl/n3BZmpdnb5w0esxZUk/4QGeEYI5oFICLqZAYy9OuX7JDtdfVgJY8Ynqh
 yWTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IvP98dDrq1/PKtiH7hCEfLKCy7yk+zANVEOxxRPRQmc=;
 b=RAg2+2bhPeyXJzk16eWhCXN0qqlHpkafHFABARjvZHWd3p0e0VEMFBpa2saz2f1JZP
 YhSLtpJiQkxYNgJ48tKY3m5I9CinAKP/pg6ZpWaxC7HWGGqKDBEWExxHOn0oftT+M3Nj
 Ux2zn4/48eb2U/6FfAFiQL46epnHQBmJ1hdP5woFnj2450cimhIJQUKqn1fB4usrUp+X
 lRRxbeSWfZIlnWt67YTqYZPAHpOfVk4fF5dfevH/bvQgidPQblzCUV5uhf4+r3KHbLiI
 mZF2KjqzZo2lFvqSJkIXZ+d9ndGsiGvvAiPSMg5D742dz1no91GFcYS0Nmsg/+Cb0wUr
 rb+w==
X-Gm-Message-State: AOAM533Mon42L8rgy7vyrpr9j9ilQbj98mHdGjgylrJ6NLPYtxFNNNHe
 AVTCgz6QBdHL2xh6paGSw4FZB7zaiTXwq2jX3r8=
X-Google-Smtp-Source: ABdhPJx7+hNLRfCiJ78tz962L+w32S1uHhD3fyeFjU5tCEc1g8GKaxbrCb/kqziiSuWb4w8V1ZF0U7wuWWqamLJzpF8=
X-Received: by 2002:a0c:c1cd:: with SMTP id v13mr31694711qvh.3.1607960863795; 
 Mon, 14 Dec 2020 07:47:43 -0800 (PST)
MIME-Version: 1.0
References: <CAA85sZvw1s-8CTCt5H_OjW-Q821LSzQOmJyyGYdKHfsDS2Z29A@mail.gmail.com>
 <20201214140222.GA202497@bjorn-Precision-5520>
In-Reply-To: <20201214140222.GA202497@bjorn-Precision-5520>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Mon, 14 Dec 2020 16:47:32 +0100
Message-ID: <CAA85sZuG2TbTjOAJ1TRhCbsZ2HRhUzD48b+SQ9JuAmW9gUm_dA@mail.gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH 1/3] PCI/ASPM: Use the path max in L1
 ASPM latency check
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
Cc: Puranjay Mohan <puranjay12@gmail.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "Saheed O. Bolarinwa" <refactormyself@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBEZWMgMTQsIDIwMjAgYXQgMzowMiBQTSBCam9ybiBIZWxnYWFzIDxoZWxnYWFzQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gTW9uLCBEZWMgMTQsIDIwMjAgYXQgMTA6MTQ6MThBTSAr
MDEwMCwgSWFuIEt1bWxpZW4gd3JvdGU6Cj4gPiBPbiBNb24sIERlYyAxNCwgMjAyMCBhdCA2OjQ0
IEFNIEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+Cj4gPiA+
IFsrY2MgSmVzc2UsIFRvbnksIERhdmlkLCBKYWt1YiwgSGVpbmVyLCBsaXN0cyBpbiBjYXNlIHRo
ZXJlJ3MgYW4gQVNQTQo+ID4gPiBpc3N1ZSB3aXRoIEkyMTEgb3IgUmVhbHRlayBOSUNzLiAgQmVn
aW5uaW5nIG9mIHRocmVhZDoKPiA+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIwMTAy
NDIwNTU0OC4xODM3NzcwLTEtaWFuLmt1bWxpZW5AZ21haWwuY29tCj4gPiA+Cj4gPiA+IFNob3J0
IHN0b3J5OiBJYW4gaGFzOgo+ID4gPgo+ID4gPiAgIFJvb3QgUG9ydCAtLS0gU3dpdGNoIC0tLSBJ
MjExIE5JQwo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgIFwtLSBtdWx0aWZ1bmN0aW9uIFJl
YWx0ZWsgTklDLCBldGMKPiA+ID4KPiA+ID4gYW5kIHRoZSBJMjExIHBlcmZvcm1hbmNlIGlzIHBv
b3Igd2l0aCBBU1BNIEwxIGVuYWJsZWQgb24gYm90aCBsaW5rcwo+ID4gPiBpbiB0aGUgcGF0aCB0
byBpdC4gIFRoZSBwYXRjaCBoZXJlIGRpc2FibGVzIEFTUE0gb24gdGhlIHVwc3RyZWFtIGxpbmsK
PiA+ID4gYW5kIGZpeGVzIHRoZSBwZXJmb3JtYW5jZSwgYnV0IEFGQUlDVCB0aGUgZGV2aWNlcyBp
biB0aGF0IHBhdGggZ2l2ZSB1cwo+ID4gPiBubyByZWFzb24gdG8gZGlzYWJsZSBMMS4gIElmIEkg
dW5kZXJzdGFuZCB0aGUgc3BlYyBjb3JyZWN0bHksIHRoZQo+ID4gPiBSZWFsdGVrIGRldmljZSBz
aG91bGQgbm90IGJlIHJlbGV2YW50IHRvIHRoZSBJMjExIHBhdGguXQo+ID4gPgo+ID4gPiBPbiBT
dW4sIERlYyAxMywgMjAyMCBhdCAxMDozOTo1M1BNICswMTAwLCBJYW4gS3VtbGllbiB3cm90ZToK
PiA+ID4gPiBPbiBTdW4sIERlYyAxMywgMjAyMCBhdCAxMjo0NyBBTSBCam9ybiBIZWxnYWFzIDxo
ZWxnYWFzQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPiA+ID4gT24gU2F0LCBPY3QgMjQsIDIwMjAg
YXQgMTA6NTU6NDZQTSArMDIwMCwgSWFuIEt1bWxpZW4gd3JvdGU6Cj4gPiA+ID4gPiA+IE1ha2Ug
cGNpZV9hc3BtX2NoZWNrX2xhdGVuY3kgY29tcGx5IHdpdGggdGhlIFBDSWUgc3BlYywgc3BlY2lm
aWNhbGx5Ogo+ID4gPiA+ID4gPiAiNS40LjEuMi4yLiBFeGl0IGZyb20gdGhlIEwxIFN0YXRlIgo+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBXaGljaCBtYWtlcyBpdCBjbGVhciB0aGF0IGVhY2ggc3dp
dGNoIGlzIHJlcXVpcmVkIHRvCj4gPiA+ID4gPiA+IGluaXRpYXRlIGEgdHJhbnNpdGlvbiB3aXRo
aW4gMc68cyBmcm9tIHJlY2VpdmluZyBpdCwKPiA+ID4gPiA+ID4gYWNjdW11bGF0aW5nIHRoaXMg
bGF0ZW5jeSBhbmQgdGhlbiB3ZSBoYXZlIHRvIHdhaXQgZm9yIHRoZQo+ID4gPiA+ID4gPiBzbG93
ZXN0IGxpbmsgYWxvbmcgdGhlIHBhdGggYmVmb3JlIGVudGVyaW5nIEwwIHN0YXRlIGZyb20KPiA+
ID4gPiA+ID4gTDEuCj4gPiA+ID4gPiA+IC4uLgo+ID4gPiA+ID4KPiA+ID4gPiA+ID4gT24gbXkg
c3BlY2lmaWMgc3lzdGVtOgo+ID4gPiA+ID4gPiAwMzowMC4wIEV0aGVybmV0IGNvbnRyb2xsZXI6
IEludGVsIENvcnBvcmF0aW9uIEkyMTEgR2lnYWJpdCBOZXR3b3JrIENvbm5lY3Rpb24gKHJldiAw
MykKPiA+ID4gPiA+ID4gMDQ6MDAuMCBVbmFzc2lnbmVkIGNsYXNzIFtmZjAwXTogUmVhbHRlayBT
ZW1pY29uZHVjdG9yIENvLiwgTHRkLiBEZXZpY2UgODE2ZSAocmV2IDFhKQo+ID4gPiA+ID4gPgo+
ID4gPiA+ID4gPiAgICAgICAgICAgICBFeGl0IGxhdGVuY3kgICAgICAgQWNjZXB0YWJsZSBsYXRl
bmN5Cj4gPiA+ID4gPiA+IFRyZWU6ICAgICAgIEwxICAgICAgIEwwcyAgICAgICBMMSAgICAgICBM
MHMKPiA+ID4gPiA+ID4gLS0tLS0tLS0tLSAgLS0tLS0tLSAgLS0tLS0gICAgIC0tLS0tLS0gIC0t
LS0tLQo+ID4gPiA+ID4gPiAwMDowMS4yICAgICA8MzIgdXMgICAtCj4gPiA+ID4gPiA+IHwgMDE6
MDAuMCAgIDwzMiB1cyAgIC0KPiA+ID4gPiA+ID4gfC0gMDI6MDMuMCAgPDMyIHVzICAgLQo+ID4g
PiA+ID4gPiB8IFwwMzowMC4wICA8MTYgdXMgICA8MnVzICAgICAgPDY0IHVzICAgPDUxMm5zCj4g
PiA+ID4gPiA+IHwKPiA+ID4gPiA+ID4gXC0gMDI6MDQuMCAgPDMyIHVzICAgLQo+ID4gPiA+ID4g
PiAgIFwwNDowMC4wICA8NjQgdXMgICB1bmxpbWl0ZWQgPDY0IHVzICAgPDUxMm5zCj4gPiA+ID4g
PiA+Cj4gPiA+ID4gPiA+IDA0OjAwLjAncyBsYXRlbmN5IGlzIHRoZSBzYW1lIGFzIHRoZSBtYXhp
bXVtIGl0IGFsbG93cyBzbyBhcwo+ID4gPiA+ID4gPiB3ZSB3YWxrIHRoZSBwYXRoIHRoZSBmaXJz
dCBzd2l0Y2hzIHN0YXJ0dXAgbGF0ZW5jeSB3aWxsIHBhc3MKPiA+ID4gPiA+ID4gdGhlIGFjY2Vw
dGFibGUgbGF0ZW5jeSBsaW1pdCBmb3IgdGhlIGxpbmssIGFuZCBhcyBhCj4gPiA+ID4gPiA+IHNp
ZGUtZWZmZWN0IGl0IGZpeGVzIG15IGlzc3VlcyB3aXRoIDAzOjAwLjAuCj4gPiA+ID4gPiA+Cj4g
PiA+ID4gPiA+IFdpdGhvdXQgdGhpcyBwYXRjaCwgMDM6MDAuMCBtaXNiZWhhdmVzIGFuZCBvbmx5
IGdpdmVzIG1lIH40MAo+ID4gPiA+ID4gPiBtYml0L3Mgb3ZlciBsaW5rcyB3aXRoIDYgb3IgbW9y
ZSBob3BzLiBXaXRoIHRoaXMgcGF0Y2ggSSdtCj4gPiA+ID4gPiA+IGJhY2sgdG8gYSBtYXhpbXVt
IG9mIH45MzMgbWJpdC9zLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoZXJlIGFyZSB0d28gcGF0aHMg
aGVyZSB0aGF0IHNoYXJlIGEgTGluazoKPiA+ID4gPiA+Cj4gPiA+ID4gPiAgIDAwOjAxLjIgLS0t
IDAxOjAwLjAgLS0gMDI6MDMuMCAtLS0gMDM6MDAuMCBJMjExIE5JQwo+ID4gPiA+ID4gICAwMDow
MS4yIC0tLSAwMTowMC4wIC0tIDAyOjA0LjAgLS0tIDA0OjAwLnggbXVsdGlmdW5jdGlvbiBSZWFs
dGVrCj4gPiA+ID4gPgo+ID4gPiA+ID4gMSkgVGhlIHBhdGggdG8gdGhlIEkyMTEgTklDIGluY2x1
ZGVzIGZvdXIgUG9ydHMgYW5kIHR3byBMaW5rcyAodGhlCj4gPiA+ID4gPiAgICBjb25uZWN0aW9u
IGJldHdlZW4gMDE6MDAuMCBhbmQgMDI6MDMuMCBpcyBpbnRlcm5hbCBTd2l0Y2ggcm91dGluZywK
PiA+ID4gPiA+ICAgIG5vdCBhIExpbmspLgo+ID4gPiA+Cj4gPiA+ID4gPiAgICBUaGUgUG9ydHMg
YWR2ZXJ0aXNlIEwxIGV4aXQgbGF0ZW5jaWVzIG9mIDwzMnVzLCA8MzJ1cywgPDMydXMsCj4gPiA+
ID4gPiAgICA8MTZ1cy4gIElmIGJvdGggTGlua3MgYXJlIGluIEwxIGFuZCAwMzowMC4wIGluaXRp
YXRlcyBMMSBleGl0IGF0IFQsCj4gPiA+ID4gPiAgICAwMTowMC4wIGluaXRpYXRlcyBMMSBleGl0
IGF0IFQgKyAxLiAgQSBUTFAgZnJvbSAwMzowMC4wIG1heSBzZWUgdXAKPiA+ID4gPiA+ICAgIHRv
IDEgKyAzMiA9IDMzdXMgb2YgTDEgZXhpdCBsYXRlbmN5Lgo+ID4gPiA+ID4KPiA+ID4gPiA+ICAg
IFRoZSBOSUMgY2FuIHRvbGVyYXRlIHVwIHRvIDY0dXMgb2YgTDEgZXhpdCBsYXRlbmN5LCBzbyBp
dCBpcyBzYWZlCj4gPiA+ID4gPiAgICB0byBlbmFibGUgTDEgZm9yIGJvdGggTGlua3MuCj4gPiA+
ID4gPgo+ID4gPiA+ID4gMikgVGhlIHBhdGggdG8gdGhlIFJlYWx0ZWsgZGV2aWNlIGlzIHNpbWls
YXIgZXhjZXB0IHRoYXQgdGhlIFJlYWx0ZWsKPiA+ID4gPiA+ICAgIEwxIGV4aXQgbGF0ZW5jeSBp
cyA8NjR1cy4gIElmIGJvdGggTGlua3MgYXJlIGluIEwxIGFuZCAwNDowMC54Cj4gPiA+ID4gPiAg
ICBpbml0aWF0ZXMgTDEgZXhpdCBhdCBULCAwMTowMC4wIGFnYWluIGluaXRpYXRlcyBMMSBleGl0
IGF0IFQgKyAxLAo+ID4gPiA+ID4gICAgYnV0IGEgVExQIGZyb20gMDQ6MDAueCBtYXkgc2VlIHVw
IHRvIDEgKyA2NCA9IDY1dXMgb2YgTDEgZXhpdAo+ID4gPiA+ID4gICAgbGF0ZW5jeS4KPiA+ID4g
PiA+Cj4gPiA+ID4gPiAgICBUaGUgUmVhbHRlayBkZXZpY2UgY2FuIG9ubHkgdG9sZXJhdGUgNjR1
cyBvZiBsYXRlbmN5LCBzbyBpdCBpcyBub3QKPiA+ID4gPiA+ICAgIHNhZmUgdG8gZW5hYmxlIEwx
IGZvciBib3RoIExpbmtzLiAgSXQgc2hvdWxkIGJlIHNhZmUgdG8gZW5hYmxlIEwxCj4gPiA+ID4g
PiAgICBvbiB0aGUgc2hhcmVkIGxpbmsgYmVjYXVzZSB0aGUgZXhpdCBsYXRlbmN5IGZvciB0aGF0
IGxpbmsgd291bGQgYmUKPiA+ID4gPiA+ICAgIDwzMnVzLgo+ID4gPiA+Cj4gPiA+ID4gMDQ6MDAu
MDoKPiA+ID4gPiBEZXZDYXA6IE1heFBheWxvYWQgMTI4IGJ5dGVzLCBQaGFudEZ1bmMgMCwgTGF0
ZW5jeSBMMHMgPDUxMm5zLCBMMSA8NjR1cwo+ID4gPiA+IExua0NhcDogUG9ydCAjMCwgU3BlZWQg
NUdUL3MsIFdpZHRoIHgxLCBBU1BNIEwwcyBMMSwgRXhpdCBMYXRlbmN5IEwwcwo+ID4gPiA+IHVu
bGltaXRlZCwgTDEgPDY0dXMKPiA+ID4gPgo+ID4gPiA+IFNvIG1heGltdW0gbGF0ZW5jeSBmb3Ig
dGhlIGVudGlyZSBsaW5rIGhhcyB0byBiZSA8NjQgdXMKPiA+ID4gPiBGb3IgdGhlIGRldmljZSB0
byBsZWF2ZSBMMSBBU1BNIHRha2VzIDw2NHVzCj4gPiA+ID4KPiA+ID4gPiBTbyB0aGUgZGV2aWNl
IGl0c2VsZiBpcyB0aGUgc2xvd2VzdCBlbnRyeSBhbG9uZyB0aGUgbGluaywgd2hpY2gKPiA+ID4g
PiBtZWFucyB0aGF0IG5vdGhpbmcgZWxzZSBhbG9uZyB0aGF0IHBhdGggY2FuIGhhdmUgQVNQTSBl
bmFibGVkCj4gPiA+Cj4gPiA+IFllcy4gIFRoYXQncyB3aGF0IEkgc2FpZCBhYm92ZTogIml0IGlz
IG5vdCBzYWZlIHRvIGVuYWJsZSBMMSBmb3IgYm90aAo+ID4gPiBMaW5rcy4iICBVbmxlc3MgSSdt
IG1pc3Npbmcgc29tZXRoaW5nLCB3ZSBhZ3JlZSBvbiB0aGF0Lgo+ID4gPgo+ID4gPiBJIGFsc28g
c2FpZCB0aGF0IGl0IHNob3VsZCBiZSBzYWZlIHRvIGVuYWJsZSBMMSBvbiB0aGUgc2hhcmVkIExp
bmsKPiA+ID4gKGZyb20gMDA6MDEuMiB0byAwMTowMC4wKSBiZWNhdXNlIGlmIHRoZSBkb3duc3Ry
ZWFtIExpbmsgaXMgYWx3YXlzIGluCj4gPiA+IEwwLCB0aGUgZXhpdCBsYXRlbmN5IG9mIHRoZSBz
aGFyZWQgTGluayBzaG91bGQgYmUgPDMydXMsIGFuZCAwNDowMC54Cj4gPiA+IGNhbiB0b2xlcmF0
ZSA2NHVzLgo+ID4KPiA+IEV4aXQgbGF0ZW5jeSBvZiBzaGFyZWQgbGluayB3b3VsZCBiZSBtYXgg
b2YgbGluaywgaWUgNjQgKyBMMS1ob3BzLCBub3QgMzIKPgo+IEkgZG9uJ3QgdGhpbmsgdGhpcyBp
cyB0cnVlLiAgVGhlIHBhdGggZnJvbSAwMDowMS4yIHRvIDA0OjAwLnggaW5jbHVkZXMKPiB0d28g
TGlua3MsIGFuZCB0aGV5IGFyZSBpbmRlcGVuZGVudC4gIFRoZSBleGl0IGxhdGVuY3kgZm9yIGVh
Y2ggTGluawo+IGRlcGVuZHMgb25seSBvbiB0aGUgUG9ydCBhdCBlYWNoIGVuZDoKClRoZSBmdWxs
IHBhdGggaXMgd2hhdCBpcyBpbXBvcnRhbnQsIGJlY2F1c2UgdGhhdCBpcyB0aGUgYWN0dWFsIGxh
dGVuY3kKKHdoaWNoIHRoZSBjdXJyZW50IGxpbnV4IGNvZGUgZG9lc24ndCBkbykKCj4gICBMaW5r
IDEgKGRlcGVuZHMgb24gMDA6MDEuMiBhbmQgMDE6MDAuMCk6IG1heCgzMiwgMzIpID0gMzJ1cwo+
ICAgTGluayAyIChkZXBlbmRzIG9uIDAyOjA0LjAgYW5kIDA0OjAwLngpOiBtYXgoMzIsIDY0KSA9
IDY0dXMKPgo+IElmIEwxIGlzIGVuYWJsZWQgZm9yIExpbmsgMSBhbmQgZGlzYWJsZWQgZm9yIExp
bmsgMiwgTGluayAyIHdpbGwKPiByZW1haW4gaW4gTDAgc28gaXQgaGFzIG5vIEwxIGV4aXQgbGF0
ZW5jeSwgYW5kIHRoZSBleGl0IGxhdGVuY3kgb2YKPiB0aGUgZW50aXJlIHBhdGggc2hvdWxkIGJl
IDMydXMuCgpNeSBwYXRjaCBkaXNhYmxlcyB0aGlzIHNvIHllcy4KCj4gPiA+ID4gPiA+IFRoZSBv
cmlnaW5hbCBjb2RlIHBhdGggZGlkOgo+ID4gPiA+ID4gPiAwNDowMDowLTAyOjA0LjAgbWF4IGxh
dGVuY3kgNjQgICAgLT4gb2sKPiA+ID4gPiA+ID4gMDI6MDQuMC0wMTowMC4wIG1heCBsYXRlbmN5
IDMyICsxIC0+IG9rCj4gPiA+ID4gPiA+IDAxOjAwLjAtMDA6MDEuMiBtYXggbGF0ZW5jeSAzMiAr
MiAtPiBvawo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBBbmQgdGh1cyBkaWRuJ3Qgc2VlIGFueSBM
MSBBU1BNIGxhdGVuY3kgaXNzdWVzLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBUaGUgbmV3IGNv
ZGUgZG9lczoKPiA+ID4gPiA+ID4gMDQ6MDA6MC0wMjowNC4wIG1heCBsYXRlbmN5IDY0ICAgIC0+
IG9rCj4gPiA+ID4gPiA+IDAyOjA0LjAtMDE6MDAuMCBtYXggbGF0ZW5jeSA2NCArMSAtPiBsYXRl
bmN5IGV4Y2VlZGVkCj4gPiA+ID4gPiA+IDAxOjAwLjAtMDA6MDEuMiBtYXggbGF0ZW5jeSA2NCAr
MiAtPiBsYXRlbmN5IGV4Y2VlZGVkCj4gPiA+ID4gPgo+ID4gPiA+ID4gW05pdDogSSBkb24ndCB0
aGluayB3ZSBzaG91bGQgYWRkIDEgZm9yIHRoZSAwMjowNC4wIC0tIDAxOjAwLjAgcGllY2UKPiA+
ID4gPiA+IGJlY2F1c2UgdGhhdCdzIGludGVybmFsIFN3aXRjaCByb3V0aW5nLCBub3QgYSBMaW5r
LiAgQnV0IGV2ZW4gd2l0aG91dAo+ID4gPiA+ID4gdGhhdCBleHRyYSBtaWNyb3NlY29uZCwgdGhp
cyBwYXRoIGRvZXMgZXhjZWVkIHRoZSBhY2NlcHRhYmxlIGxhdGVuY3kKPiA+ID4gPiA+IHNpbmNl
IDEgKyA2NCA9IDY1dXMsIGFuZCAwNDowMC4wIGNhbiBvbmx5IHRvbGVyYXRlIDY0dXMuXQo+ID4g
PiA+Cj4gPiA+ID4gSXQgZG9lcyByZXBvcnQgTDEgQVNQTSBvbiBib3RoIGVuZHMsIHNvIHRoZSBs
aW5rcyB3aWxsIGJlIGNvdW50ZWQgYXMKPiA+ID4gPiBzdWNoIGluIHRoZSBjb2RlLgo+ID4gPgo+
ID4gPiBUaGlzIGlzIGEgYml0IG9mIGEgdGFuZ2VudCBhbmQgd2Ugc2hvdWxkbid0IGdldCB0b28g
d3JhcHBlZCB1cCBpbiBpdC4KPiA+ID4gVGhpcyBpcyBhIGNvbmZ1c2luZyBhc3BlY3Qgb2YgUENJ
ZS4gIFdlJ3JlIHRhbGtpbmcgYWJvdXQgdGhpcyBwYXRoOgo+ID4gPgo+ID4gPiAgIDAwOjAxLjIg
LS0tIFswMTowMC4wIC0tIDAyOjA0LjBdIC0tLSAwNDowMC54IG11bHRpZnVuY3Rpb24gUmVhbHRl
awo+ID4gPgo+ID4gPiBUaGlzIHBhdGggb25seSBjb250YWlucyB0d28gTGlua3MuICBUaGUgZmly
c3Qgb25lIGlzCj4gPiA+IDAwOjAxLjIgLS0tIDAxOjAwLjAsIGFuZCB0aGUgc2Vjb25kIG9uZSBp
cyAwMjowNC4wIC0tLSAwNDowMC54Lgo+ID4gPgo+ID4gPiAwMTowMC4wIGlzIGEgU3dpdGNoIFVw
c3RyZWFtIFBvcnQgYW5kIDAyOjA0LjAgaXMgYSBTd2l0Y2ggRG93bnN0cmVhbQo+ID4gPiBQb3J0
LiAgVGhlIGNvbm5lY3Rpb24gYmV0d2VlbiB0aGVtIGlzIG5vdCBhIExpbms7IGl0IGlzIHNvbWUg
aW50ZXJuYWwKPiA+ID4gd2lyaW5nIG9mIHRoZSBTd2l0Y2ggdGhhdCBpcyBjb21wbGV0ZWx5IG9w
YXF1ZSB0byBzb2Z0d2FyZS4KPiA+ID4KPiA+ID4gVGhlIEFTUE0gaW5mb3JtYXRpb24gYW5kIGtu
b2JzIGluIDAxOjAwLjAgYXBwbHkgdG8gdGhlIExpbmsgb24gaXRzCj4gPiA+IHVwc3RyZWFtIHNp
ZGUsIGFuZCB0aGUgQVNQTSBpbmZvIGFuZCBrbm9icyBpbiAwMjowNC4wIGFwcGx5IHRvIHRoZQo+
ID4gPiBMaW5rIG9uIGl0cyBkb3duc3RyZWFtIHNpZGUuCj4gPiA+Cj4gPiA+IFRoZSBleGFtcGxl
IGluIHNlYyA1LjQuMS4yLjIgY29udGFpbnMgdGhyZWUgTGlua3MuICBUaGUgTDEgZXhpdCBsYXRl
bmN5Cj4gPiA+IGZvciB0aGUgTGluayBpcyB0aGUgbWF4IG9mIHRoZSBleGl0IGxhdGVuY2llcyBh
dCBlYWNoIGVuZDoKPiA+ID4KPiA+ID4gICBMaW5rIDE6IG1heCgzMiwgOCkgPSAzMnVzCj4gPiA+
ICAgTGluayAyOiBtYXgoOCwgMzIpID0gMzJ1cwo+ID4gPiAgIExpbmsgMzogbWF4KDMyLCA4KSA9
IDMydXMKPiA+ID4KPiA+ID4gVGhlIHRvdGFsIGRlbGF5IGZvciBhIFRMUCBzdGFydGluZyBhdCB0
aGUgZG93bnN0cmVhbSBlbmQgb2YgTGluayAzCj4gPiA+IGlzIDMyICsgMiA9IDMydXMuCj4gPiA+
Cj4gPiA+IEluIHRoZSBwYXRoIHRvIHlvdXIgMDQ6MDAueCBSZWFsdGVrIGRldmljZToKPiA+ID4K
PiA+ID4gICBMaW5rIDEgKGZyb20gMDA6MDEuMiB0byAwMTowMC4wKTogbWF4KDMyLCAzMikgPSAz
MnVzCj4gPiA+ICAgTGluayAyIChmcm9tIDAyOjA0LjAgdG8gMDQ6MDAueCk6IG1heCgzMiwgNjQp
ID0gNjR1cwo+ID4gPgo+ID4gPiBJZiBMMSB3ZXJlIGVuYWJsZWQgb24gYm90aCBMaW5rcywgdGhl
IGV4aXQgbGF0ZW5jeSB3b3VsZCBiZSA2NCArIDEgPQo+ID4gPiA2NXVzLgo+ID4KPiA+IFNvIG9u
ZSBsaW5lIHRvIGJlIHJlbW92ZWQgZnJvbSB0aGUgY2hhbmdlbG9nLCBpIGFzc3VtZS4uLiBBbmQg
eWVzLCB0aGUKPiA+IGNvZGUgaGFuZGxlcyB0aGF0IC0gZmlyc3QgZGlzYWJsZSBpcyAwMTowMC4w
IDwtPiAwMDowMS4yCj4gPgo+ID4gPiA+IEkgYWxzbyBhc3N1bWUgdGhhdCBpdCBjYW4gcG93ZXIg
ZG93biBpbmRpdmlkdWFsIHBvcnRzLi4uIGFuZCBlbnRlcgo+ID4gPiA+IHJlc3Qgc3RhdGUgaWYg
bm8gbGlua3MgYXJlIHVwLgo+ID4gPgo+ID4gPiBJIGRvbid0IHRoaW5rIHRoaXMgaXMgcXVpdGUg
dHJ1ZSAtLSBhIExpbmsgY2FuJ3QgZW50ZXIgTDEgdW5sZXNzIHRoZQo+ID4gPiBQb3J0cyBvbiBi
b3RoIGVuZHMgaGF2ZSBMMSBlbmFibGVkLCBzbyBJIGRvbid0IHRoaW5rIGl0IG1ha2VzIHNlbnNl
IHRvCj4gPiA+IHRhbGsgYWJvdXQgYW4gaW5kaXZpZHVhbCBQb3J0IGJlaW5nIGluIEwxLgo+ID4g
Pgo+ID4gPiA+ID4gPiBJdCBjb3JyZWN0bHkgaWRlbnRpZmllcyB0aGUgaXNzdWUuCj4gPiA+ID4g
PiA+Cj4gPiA+ID4gPiA+IEZvciByZWZlcmVuY2UsIHBjaWUgaW5mb3JtYXRpb246Cj4gPiA+ID4g
PiA+IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjA5NzI1Cj4g
PiA+ID4gPgo+ID4gPiA+ID4gVGhlICJsc3BjaSB3aXRob3V0IG15IHBhdGNoZXMiIFsxXSBzaG93
cyBMMSBlbmFibGVkIGZvciB0aGUgc2hhcmVkCj4gPiA+ID4gPiBMaW5rIGZyb20gMDA6MDEuMiAt
LS0gMDE6MDAuMCBhbmQgZm9yIHRoZSBMaW5rIHRvIDAzOjAwLjAgKEkyMTEpLCBidXQKPiA+ID4g
PiA+IG5vdCBmb3IgdGhlIExpbmsgdG8gMDQ6MDAueCAoUmVhbHRlaykuCj4gPiA+ID4gPgo+ID4g
PiA+ID4gUGVyIG15IGFuYWx5c2lzIGFib3ZlLCB0aGF0IGxvb2tzIGxpa2UgaXQgKnNob3VsZCog
YmUgYSBzYWZlCj4gPiA+ID4gPiBjb25maWd1cmF0aW9uLiAgMDM6MDAuMCBjYW4gdG9sZXJhdGUg
NjR1cywgYWN0dWFsIGlzIDwzM3VzLiAgMDQ6MDAuMAo+ID4gPiA+ID4gY2FuIHRvbGVyYXRlIDY0
dXMsIGFjdHVhbCBzaG91bGQgYmUgPDMydXMgc2luY2Ugb25seSB0aGUgc2hhcmVkIExpbmsKPiA+
ID4gPiA+IGlzIGluIEwxLgo+ID4gPiA+Cj4gPiA+ID4gU2VlIGFib3ZlLgo+ID4gPgo+ID4gPiBB
cyBJIHNhaWQgYWJvdmUsIGlmIHdlIGVuYWJsZWQgTDEgb25seSBvbiB0aGUgc2hhcmVkIExpbmsg
ZnJvbSAwMDowMS4yCj4gPiA+IHRvIDAxOjAwLjAsIHRoZSBleGl0IGxhdGVuY3kgc2hvdWxkIGJl
IGFjY2VwdGFibGUuICBJbiB0aGF0IGNhc2UsIGEKPiA+ID4gVExQIGZyb20gMDQ6MDAueCB3b3Vs
ZCBzZWUgb25seSAzMnVzIG9mIGxhdGVuY3k6Cj4gPiA+Cj4gPiA+ICAgTGluayAxIChmcm9tIDAw
OjAxLjIgdG8gMDE6MDAuMCk6IG1heCgzMiwgMzIpID0gMzJ1cwo+ID4gPgo+ID4gPiBhbmQgMDQ6
MDAueCBjYW4gdG9sZXJhdGUgNjR1cy4KPiA+Cj4gPiBCdXQsIGFnYWluLCB5b3UncmUgY29tcGxl
dGVseSBpZ25vcmluZyB0aGUgZnVsbCBsaW5rLCBpZSAwNDowMC54IHdvdWxkCj4gPiBhbHNvIGhh
dmUgdG8gcG93ZXIgb24uCj4KPiBJIHRoaW5rIHlvdSdyZSB1c2luZyAidGhlIGZ1bGwgbGluayIg
dG8gcmVmZXIgdG8gdGhlIGVudGlyZSBwYXRoIGZyb20KPiAwMDowMS4yIHRvIDA0OjAwLnguICBJ
biBQQ0llLCBhICJMaW5rIiBkaXJlY3RseSBjb25uZWN0cyB0d28gUG9ydHMuCj4gSXQgZG9lc24n
dCByZWZlciB0byB0aGUgZW50aXJlIHBhdGguCj4KPiBObywgaWYgTDEgaXMgZGlzYWJsZWQgb24g
MDI6MDQuMCBhbmQgMDQ6MDAueCAoYXMgTGludXggYXBwYXJlbnRseSBkb2VzCj4gYnkgZGVmYXVs
dCksIHRoZSBMaW5rIGJldHdlZW4gdGhlbSBuZXZlciBlbnRlcnMgTDEsIHNvIHRoZXJlIGlzIG5v
Cj4gcG93ZXItb24gZm9yIHRoaXMgTGluay4KCkl0IGRvZXNuJ3QgZG8gaXQgYnkgZGVmYXVsdCwg
bXkgcGF0Y2ggZG9lcwoKPiA+ID4gPiA+IEhvd2V2ZXIsIHRoZSBjb21taXQgbG9nIGF0IFsyXSBz
aG93cyBMMSAqZW5hYmxlZCogZm9yIGJvdGggdGhlIHNoYXJlZAo+ID4gPiA+ID4gTGluayBmcm9t
IDAwOjAxLjIgLS0tIDAxOjAwLjAgYW5kIHRoZSAwMjowNC4wIC0tLSAwNDowMC54IExpbmssIGFu
ZAo+ID4gPiA+ID4gdGhhdCB3b3VsZCBkZWZpbml0ZWx5IGJlIGEgcHJvYmxlbS4KPiA+ID4gPiA+
Cj4gPiA+ID4gPiBDYW4geW91IGV4cGxhaW4gdGhlIGRpZmZlcmVuY2VzIGJldHdlZW4gWzFdIGFu
ZCBbMl0/Cj4gPiA+ID4KPiA+ID4gPiBJIGRvbid0IHVuZGVyc3RhbmQgd2hpY2ggc2VjdGlvbnMg
eW91J3JlIHJlZmVycmluZyB0by4KPiA+ID4KPiA+ID4gWzFdIGlzIHRoZSAibHNwY2kgd2l0aG91
dCBteSBwYXRjaGVzIiBhdHRhY2htZW50IG9mIGJ1Z3ppbGxhICMyMDk3MjUsCj4gPiA+IHdoaWNo
IGlzIHN1cHBvc2VkIHRvIHNob3cgdGhlIHByb2JsZW0gdGhpcyBwYXRjaCBzb2x2ZXMuICBXZSdy
ZQo+ID4gPiB0YWxraW5nIGFib3V0IHRoZSBwYXRoIHRvIDA0OjAwLngsIGFuZCBbMV0gc2hvdyB0
aGlzOgo+ID4gPgo+ID4gPiAgIDAxOjAwLjIgTDErICAgICAgICAgICAgICAgIyA8LS0gbXkgdHlw
byBoZXJlLCBzaG91bGQgYmUgMDA6MDEuMgo+ID4gPiAgIDAxOjAwLjAgTDErCj4gPiA+ICAgMDI6
MDQuMCBMMS0KPiA+ID4gICAwNDowMC4wIEwxLQo+ID4gPgo+ID4gPiBBRkFJQ1QsIHRoYXQgc2hv
dWxkIGJlIGEgbGVnYWwgY29uZmlndXJhdGlvbiBhcyBmYXIgYXMgMDQ6MDAuMCBpcwo+ID4gPiBj
b25jZXJuZWQsIHNvIGl0J3Mgbm90IGEgcmVhc29uIGZvciB0aGlzIHBhdGNoLgo+ID4KPiA+IEFj
dHVhbGx5LCBubywgbWF4aW11bSBwYXRoIGxhdGVuY3kgNjR1cwo+ID4KPiA+IDA0OjAwLjAgd2Fr
ZXVwIGxhdGVuY3kgPT0gNjR1cwo+ID4KPiA+IEFnYWluLCBhcyBzdGF0ZWQsIGl0IGNhbid0IGJl
IGJlaGluZCBhbnkgc2xlZXBpbmcgTDEgbGlua3MKPgo+IEl0IHdvdWxkIGJlIHBvaW50bGVzcyBm
b3IgYSBkZXZpY2UgdG8gYWR2ZXJ0aXNlIEwxIHN1cHBvcnQgaWYgaXQgY291bGQKPiBuZXZlciBi
ZSB1c2VkLiAgMDQ6MDAuMCBhZHZlcnRpc2VzIHRoYXQgaXQgY2FuIHRvbGVyYXRlIEwxIGxhdGVu
Y3kgb2YKPiA2NHVzIGFuZCB0aGF0IGl0IGNhbiBleGl0IEwxIGluIDY0dXMgb3IgbGVzcy4gIFNv
IGl0ICpjYW4qIGJlIGJlaGluZCBhCj4gTGluayBpbiBMMSBhcyBsb25nIGFzIG5vdGhpbmcgZWxz
ZSBpbiB0aGUgcGF0aCBhZGRzIG1vcmUgbGF0ZW5jeS4KClllcywgYXMgbG9uZyBhcyBub3RoaW5n
IGFsb25nIHRoZSBlbnRpcmUgcGF0aCBhZGRzIGxhdGVuY3kgLSBhbmQgSQpkaWRuJ3QgbWFrZSB0
aGUgY29tcG9uZW50CkkgY2FuIG9ubHkgc2F5IHdoYXQgaXQgc3RhdGVzLCBhbmQgd2UgaGF2ZSB0
byBoYW5kbGUgaXQuCgo+ID4gPiBbMl0gaXMgYSBwcmV2aW91cyBwb3N0aW5nIG9mIHRoaXMgc2Ft
ZSBwYXRjaCwgYW5kIGl0cyBjb21taXQgbG9nCj4gPiA+IGluY2x1ZGVzIGluZm9ybWF0aW9uIGFi
b3V0IHRoZSBzYW1lIHBhdGggdG8gMDQ6MDAueCwgYnV0IHRoZSAiTG5rQ3RsCj4gPiA+IEJlZm9y
ZSIgY29sdW1uIHNob3dzOgo+ID4gPgo+ID4gPiAgIDAxOjAwLjIgTDErICAgICAgICAgICAgICAg
IyA8LS0gbXkgdHlwbyBoZXJlLCBzaG91bGQgYmUgMDA6MDEuMgo+ID4gPiAgIDAxOjAwLjAgTDEr
Cj4gPiA+ICAgMDI6MDQuMCBMMSsKPiA+ID4gICAwNDowMC4wIEwxKwo+ID4gPgo+ID4gPiBJIGRv
bid0IGtub3cgd2h5IFsxXSBzaG93cyBMMSBkaXNhYmxlZCBvbiB0aGUgZG93bnN0cmVhbSBMaW5r
LCB3aGlsZQo+ID4gPiBbMl0gc2hvd3MgTDEgKmVuYWJsZWQqIG9uIHRoZSBzYW1lIExpbmsuCj4g
Pgo+ID4gRnJvbSB0aGUgZGF0YSB0aGV5IGxvb2sgc3dpdGNoZWQuCj4gPgo+ID4gPiA+ID4gPiBL
YWktSGVuZyBGZW5nIGhhcyBhIG1hY2hpbmUgdGhhdCB3aWxsIG5vdCBib290IHdpdGggQVNQTSB3
aXRob3V0Cj4gPiA+ID4gPiA+IHRoaXMgcGF0Y2gsIGluZm9ybWF0aW9uIGlzIGRvY3VtZW50ZWQg
aGVyZToKPiA+ID4gPiA+ID4gaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNn
aT9pZD0yMDk2NzEKPiA+ID4gPiA+Cj4gPiA+ID4gPiBJIHN0YXJ0ZWQgd29ya2luZyB0aHJvdWdo
IHRoaXMgaW5mbywgdG9vLCBidXQgdGhlcmUncyBub3QgZW5vdWdoCj4gPiA+ID4gPiBpbmZvcm1h
dGlvbiB0byB0ZWxsIHdoYXQgZGlmZmVyZW5jZSB0aGlzIHBhdGNoIG1ha2VzLiAgVGhlIGF0dGFj
aG1lbnRzCj4gPiA+ID4gPiBjb21wYXJlOgo+ID4gPiA+ID4KPiA+ID4gPiA+ICAgMSkgQ09ORklH
X1BDSUVBU1BNX0RFRkFVTFQ9eSB3aXRob3V0IHRoZSBwYXRjaCBbM10gYW5kCj4gPiA+ID4gPiAg
IDIpIENPTkZJR19QQ0lFQVNQTV9QT1dFUlNBVkU9eSAqd2l0aCogdGhlIHBhdGNoIFs0XQo+ID4g
PiA+ID4KPiA+ID4gPiA+IE9idmlvdXNseSBDT05GSUdfUENJRUFTUE1fUE9XRVJTQVZFPXkgd2ls
bCBjb25maWd1cmUgdGhpbmdzCj4gPiA+ID4gPiBkaWZmZXJlbnRseSB0aGFuIENPTkZJR19QQ0lF
QVNQTV9ERUZBVUxUPXksIHNvIHdlIGNhbid0IHRlbGwgd2hhdAo+ID4gPiA+ID4gY2hhbmdlcyBh
cmUgZHVlIHRvIHRoZSBjb25maWcgY2hhbmdlIGFuZCB3aGF0IGFyZSBkdWUgdG8gdGhlIHBhdGNo
Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoZSBsc3BjaSAqd2l0aCogdGhlIHBhdGNoIChbNF0pIHNo
b3dzIEwwcyBhbmQgTDEgZW5hYmxlZCBhdCBhbG1vc3QKPiA+ID4gPiA+IGV2ZXJ5IHBvc3NpYmxl
IHBsYWNlLiAgSGVyZSBhcmUgdGhlIExpbmtzLCBob3cgdGhleSdyZSBjb25maWd1cmVkLCBhbmQK
PiA+ID4gPiA+IG15IGFuYWx5c2lzIG9mIHRoZSBleGl0IGxhdGVuY2llcyB2cyBhY2NlcHRhYmxl
IGxhdGVuY2llczoKPiA+ID4gPiA+Cj4gPiA+ID4gPiAgIDAwOjAxLjEgLS0tIDAxOjAwLjAgICAg
ICBMMSsgKCAgICAgICAgICAgICAgICAgIEwxIDw2NHVzIHZzIHVubCkKPiA+ID4gPiA+ICAgMDA6
MDEuMiAtLS0gMDI6MDAuMCAgICAgIEwxKyAoICAgICAgICAgICAgICAgICAgTDEgPDY0dXMgdnMg
NjR1cykKPiA+ID4gPiA+ICAgMDA6MDEuMyAtLS0gMDM6MDAuMCAgICAgIEwxKyAoICAgICAgICAg
ICAgICAgICAgTDEgPDY0dXMgdnMgNjR1cykKPiA+ID4gPiA+ICAgMDA6MDEuNCAtLS0gMDQ6MDAu
MCAgICAgIEwxKyAoICAgICAgICAgICAgICAgICAgTDEgPDY0dXMgdnMgdW5sKQo+ID4gPiA+ID4g
ICAwMDowOC4xIC0tLSAwNTowMC54IEwwcysgTDErIChMMHMgPDY0bnMgdnMgNHVzLCBMMSAgPDF1
cyB2cyB1bmwpCj4gPiA+ID4gPiAgIDAwOjA4LjIgLS0tIDA2OjAwLjAgTDBzKyBMMSsgKEwwcyA8
NjRucyB2cyA0dXMsIEwxICA8MXVzIHZzIHVubCkKPiA+ID4gPiA+Cj4gPiA+ID4gPiBTbyBJIGNh
bid0IHRlbGwgd2hhdCBjaGFuZ2UgcHJldmVudHMgdGhlIGZyZWV6ZS4gIEkgd291bGQgZXhwZWN0
IHRoZQo+ID4gPiA+ID4gcGF0Y2ggd291bGQgY2F1c2UgdXMgdG8gKmRpc2FibGUqIEwwcyBvciBM
MSBzb21ld2hlcmUuCj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhlIG9ubHkgcGxhY2UgWzRdIHNob3dz
IEFTUE0gZGlzYWJsZWQgaXMgZm9yIDA1OjAwLjEuICBUaGUgc3BlYyBzYXlzCj4gPiA+ID4gPiB3
ZSBzaG91bGQgcHJvZ3JhbSB0aGUgc2FtZSB2YWx1ZSBpbiBhbGwgZnVuY3Rpb25zIG9mIGEgbXVs
dGktZnVuY3Rpb24KPiA+ID4gPiA+IGRldmljZS4gIFRoaXMgaXMgYSBub24tQVJJIGRldmljZSwg
c28gIm9ubHkgY2FwYWJpbGl0aWVzIGVuYWJsZWQgaW4KPiA+ID4gPiA+IGFsbCBmdW5jdGlvbnMg
YXJlIGVuYWJsZWQgZm9yIHRoZSBjb21wb25lbnQgYXMgYSB3aG9sZS4iICBUaGF0IHdvdWxkCj4g
PiA+ID4gPiBtZWFuIHRoYXQgTDBzIGFuZCBMMSBhcmUgZWZmZWN0aXZlbHkgZGlzYWJsZWQgZm9y
IDA1OjAwLnggZXZlbiB0aG91Z2gKPiA+ID4gPiA+IDA1OjAwLjAgY2xhaW1zIHRoZXkncmUgZW5h
YmxlZC4gIEJ1dCB0aGUgbGF0ZW5jaWVzIHNheSBBU1BNIEwwcyBhbmQgTDEKPiA+ID4gPiA+IHNo
b3VsZCBiZSBzYWZlIHRvIGJlIGVuYWJsZWQuICBUaGlzIGxvb2tzIGxpa2UgYW5vdGhlciBidWcg
dGhhdCdzCj4gPiA+ID4gPiBwcm9iYWJseSB1bnJlbGF0ZWQuCj4gPiA+ID4KPiA+ID4gPiBJIGRv
bid0IHRoaW5rIGl0J3MgdW5yZWxhdGVkLCBpIHN1c3BlY3QgaXQncyBob3cgUENJZSB3b3JrcyB3
aXRoCj4gPiA+ID4gbXVsdGlwbGUgbGlua3MuLi4gIGEgZGV2aWNlIGNhbiBjYXVzZSBzb21lIGtp
bmQgb2YgaGVhZCBvZiBxdWV1ZQo+ID4gPiA+IHN0YWxsaW5nIC0gaSBkb24ndCBrbm93IGhvdyBi
dXQgaXQgcmVhbGx5IGxvb2tzIGxpa2UgaXQuCj4gPiA+Cj4gPiA+IFRoZSB0ZXh0IGluIHF1b3Rl
cyBhYm92ZSBpcyBzdHJhaWdodCBvdXQgb2YgdGhlIHNwZWMgKFBDSWUgcjUuMCwgc2VjCj4gPiA+
IDcuNS4zLjcpLiAgRWl0aGVyIHRoZSBkZXZpY2Ugd29ya3MgdGhhdCB3YXkgb3IgaXQncyBub3Qg
Y29tcGxpYW50Lgo+ID4gPgo+ID4gPiBUaGUgT1MgY29uZmlndXJlcyBBU1BNIGJhc2VkIG9uIHRo
ZSByZXF1aXJlbWVudHMgYW5kIGNhcGFiaWxpdGllcwo+ID4gPiBhZHZlcnRpc2VkIGJ5IHRoZSBk
ZXZpY2UuICBJZiBhIGRldmljZSBoYXMgYW55IGhlYWQgb2YgcXVldWUgc3RhbGxpbmcKPiA+ID4g
b3Igc2ltaWxhciBpc3N1ZXMsIHRob3NlIG11c3QgYmUgY29tcHJlaGVuZGVkIGluIHRoZSBudW1i
ZXJzCj4gPiA+IGFkdmVydGlzZWQgYnkgdGhlIGRldmljZS4gIEl0J3Mgbm90IHVwIHRvIHRoZSBP
UyB0byBzcGVjdWxhdGUgYWJvdXQKPiA+ID4gaXNzdWVzIGxpa2UgdGhhdC4KPiA+ID4KPiA+ID4g
PiA+IFRoZSBwYXRjaCBtaWdodCBiZSBjb3JyZWN0OyBJIGhhdmVuJ3QgYWN0dWFsbHkgYW5hbHl6
ZWQgdGhlIGNvZGUuICBCdXQKPiA+ID4gPiA+IHRoZSBjb21taXQgbG9nIGRvZXNuJ3QgbWFrZSBz
ZW5zZSB0byBtZSB5ZXQuCj4gPiA+ID4KPiA+ID4gPiBJIHBlcnNvbmFsbHkgZG9uJ3QgdGhpbmsg
dGhhdCBhbGwgdGhpcyBQQ0kgaW5mb3JtYXRpb24gaXMgcmVxdWlyZWQsCj4gPiA+ID4gdGhlIGxp
bnV4IGtlcm5lbCBpcyBjdXJyZW50bHkgZG9pbmcgaXQgd3JvbmcgYWNjb3JkaW5nIHRvIHRoZSBz
cGVjLgo+ID4gPgo+ID4gPiBXZSdyZSB0cnlpbmcgdG8gZXN0YWJsaXNoIGV4YWN0bHkgKndoYXQq
IExpbnV4IGlzIGRvaW5nIHdyb25nLiAgU28gZmFyCj4gPiA+IHdlIGRvbid0IGhhdmUgYSBnb29k
IGV4cGxhbmF0aW9uIG9mIHRoYXQuCj4gPgo+ID4gWWVzIHdlIGRvLCBsaW51eCBjb3VudHMgaG9w
cyArIG1heCBmb3IgImxpbmsiIHdoaWxlIHdoYXQgc2hvdWxkIGJlIGRvbmUgaXMKPiA+IGNvdW50
aW5nIGhvcHMgKyBtYXggZm9yIHBhdGgKPgo+IEkgdGhpbmsgeW91J3JlIHNheWluZyB3ZSBuZWVk
IHRvIGluY2x1ZGUgTDEgZXhpdCBsYXRlbmN5IGV2ZW4gZm9yCj4gTGlua3Mgd2hlcmUgTDEgaXMg
ZGlzYWJsZWQuICBJIGRvbid0IHRoaW5rIHdlIHNob3VsZCBpbmNsdWRlIHRob3NlLgoKTm9wZSwg
dGhlIGNvZGUgZG9lcyBub3QgZG8gdGhhdCwgaXQgb25seSBhZGRzIHRoZSBsMSBsYXRlbmN5IG9u
IEwxIGVuYWJsZWQgaG9wcwoKPiA+ID4gQmFzZWQgb24gWzFdLCBpbiB0aGUgcGF0aCB0byAwMzow
MC4wLCBib3RoIExpbmtzIGhhdmUgTDEgZW5hYmxlZCwgd2l0aAo+ID4gPiBhbiBleGl0IGxhdGVu
Y3kgb2YgPDMzdXMsIGFuZCAwMzowMC4wIGNhbiB0b2xlcmF0ZSA2NHVzLiAgVGhhdCBzaG91bGQK
PiA+ID4gd29yayBmaW5lLgo+ID4gPgo+ID4gPiBBbHNvIGJhc2VkIG9uIFsxXSwgaW4gdGhlIHBh
dGggdG8gMDQ6MDAueCwgdGhlIHVwc3RyZWFtIExpbmsgaGFzIEwxCj4gPiA+IGVuYWJsZWQgYW5k
IHRoZSBkb3duc3RyZWFtIExpbmsgaGFzIEwxIGRpc2FibGVkLCBmb3IgYW4gZXhpdCBsYXRlbmN5
Cj4gPiA+IG9mIDwzMnVzLCBhbmQgMDQ6MDAuMCBjYW4gdG9sZXJhdGUgNjR1cy4gIFRoYXQgc2hv
dWxkIGFsc28gd29yayBmaW5lLgo+ID4KPiA+IEFnYWluLCBpZ25vcmluZyB0aGUgZXhpdCBsYXRl
bmR5IGZvciAwNDowMC4wCj4gPgo+ID4gPiAoQWx0ZXJuYXRlbHksIGRpc2FibGluZyBMMSBvbiB0
aGUgdXBzdHJlYW0gTGluayBhbmQgZW5hYmxpbmcgaXQgb24gdGhlCj4gPiA+IGRvd25zdHJlYW0g
TGluayBzaG91bGQgaGF2ZSBhbiBleGl0IGxhdGVuY3kgb2YgPDY0dXMgYW5kIDA0OjAwLjAgY2Fu
Cj4gPiA+IHRvbGVyYXRlIDY0dXMsIHNvIHRoYXQgc2hvdWxkIHdvcmsgZmluZSwgdG9vLikKPiA+
Cj4gPiBUaGVuIG5vdGhpbmcgZWxzZSBjYW4gaGF2ZSBMMSBhc3BtIGVuYWJsZWQKPgo+IFllcywg
YXMgSSBzYWlkLCB3ZSBzaG91bGQgYmUgYWJsZSB0byBlbmFibGUgTDEgb24gZWl0aGVyIG9mIHRo
ZSBMaW5rcwo+IGluIHRoZSBwYXRoIHRvIDA0OjAwLngsIGJ1dCBub3QgYm90aC4KClRoZSBjb2Rl
IHdvcmtzIGJhY2t3YXJkcyBhbmQgZGlzYWJsZXMgdGhlIGZpcnN0IGhvcCB0aGF0IGV4Y2VlZHMg
dGhlCmxhdGVuY3kgcmVxdWlyZW1lbnRzIC0Kd2UgY291bGQgYXJndWUgdGhhdCBpdCBzaG91bGQg
dHJ5IHRvIGJlIHNtYXJ0ZXIgYWJvdXQgaXQgYW5kIHRyeSB0bwpkaXNhYmxlIGEgbWluaW11bSBh
bW91bnQgb2YgbGlua3MKd2hpbGUgc3RpbGwgcmV0YWluaW5nIHRoZSBtaW5pbXVtIGxhdGVuY3kg
YnV0Li4uIEl0IGlzIHdoYXQgaXQgaXMgYW5kCml0IHdvcmtzIHdoZW4gcGF0Y2hlZC4KCj4gVGhl
IG9yaWdpbmFsIHByb2JsZW0gaGVyZSBpcyBub3Qgd2l0aCB0aGUgUmVhbHRlayBkZXZpY2UgYXQg
MDQ6MDAueAo+IGJ1dCB3aXRoIHRoZSBJMjExIE5JQyBhdCAwMzowMC4wLiAgU28gd2UgYWxzbyBu
ZWVkIHRvIGZpZ3VyZSBvdXQgd2hhdAo+IHRoZSBjb25uZWN0aW9uIGlzLiAgRG9lcyB0aGUgc2Ft
ZSBJMjExIHBlcmZvcm1hbmNlIHByb2JsZW0gb2NjdXIgaWYKPiB5b3UgcmVtb3ZlIHRoZSBSZWFs
dGVrIGRldmljZSBmcm9tIHRoZSBzeXN0ZW0/CgpJdCdzIG1vdW50ZWQgb24gdGhlIG1vdGhlcmJv
YXJkLCBzbyBubyBJIGNhbid0IHJlbW92ZSBpdC4KCj4gMDM6MDAuMCBjYW4gdG9sZXJhdGUgNjR1
cyBvZiBsYXRlbmN5LCBzbyBldmVuIGlmIEwxIGlzIGVuYWJsZWQgb24gYm90aAo+IExpbmtzIGxl
YWRpbmcgdG8gaXQsIHRoZSBwYXRoIGV4aXQgbGF0ZW5jeSB3b3VsZCBiZSA8MzN1cywgd2hpY2gK
PiBzaG91bGQgYmUgZmluZS4KClllcywgaXQgInNob3VsZCBiZSIgYnV0IGR1ZSB0byBicm9rZW4g
QVNQTSBsYXRlbmN5IGNhbGN1bGF0aW9ucyB3ZQpoYXZlIHNvbWUga2luZCBvZgpzaWRlIGVmZmVj
dCB0aGF0IHRyaWdnZXJzIGEgcmFjZWNvbmRpdGlvbi9zaWRlZWZmZWN0L2J1ZyB0aGF0IGNhdXNl
cwppdCB0byBtaXNiZWhhdmUuCgpTaW5jZSBmaXhpbmcgdGhlIGxhdGVuY3kgY2FsY3VsYXRpb24g
Zml4ZXMgaXQsIEknbGwgbGVhdmUgdGhlIHJlc3QgdG8Kc29tZW9uZSB3aXRoIGEgbG9naWMKYW5h
bHl6ZXIgYW5kIGEgZGllLWhhcmQtZmV0aXNoIGZvciBwY2llIGxpbmtzIC0gSSBjYW4ndCBkZWJ1
ZyBpdC4KCj4gPiA+ID4gQWxzbywgc2luY2UgaXQncyBjbGVhcmx5IGRvaW5nIHRoZSB3cm9uZyB0
aGluZywgSSdtIHdvcnJpZWQgdGhhdAo+ID4gPiA+IGRpc3RzIHdpbGwgdGFrZSBhIGtlcm5lbCBl
bmFibGUgYXNwbSBhbmQgdGhlcmUgd2lsbCBiZSBhbG90IG9mCj4gPiA+ID4gYnVncmVwb3J0cyBv
ZiBub24tYm9vdGluZyBzeXN0ZW1zIG9yIG90aGVyIHdlaXJkIGlzc3Vlcy4uLiBBbmQgdGhlCj4g
PiA+ID4gY3VscHJpdCB3YXMga25vd24gYWxsIGFsb25nLgo+ID4gPgo+ID4gPiBUaGVyZSdzIGNs
ZWFybHkgYSBwcm9ibGVtIG9uIHlvdXIgc3lzdGVtLCBidXQgSSBkb24ndCBrbm93IHlldCB3aGV0
aGVyCj4gPiA+IExpbnV4IGlzIGRvaW5nIHNvbWV0aGluZyB3cm9uZywgYSBkZXZpY2UgaW4geW91
ciBzeXN0ZW0gaXMgZGVzaWduZWQKPiA+ID4gaW5jb3JyZWN0bHksIG9yIGEgZGV2aWNlIGlzIGRl
c2lnbmVkIGNvcnJlY3RseSBidXQgdGhlIGluc3RhbmNlIGluCj4gPiA+IHlvdXIgc3lzdGVtIGlz
IGRlZmVjdGl2ZS4KPiA+Cj4gPiBBY2NvcmRpbmcgdG8gdGhlIHNwZWMgaXQgaXMsIHRoZXJlIGlz
IGEgZXhwbGFuYXRpb24gb2YgaG93IHRvCj4gPiBjYWxjdWxhdGUgdGhlIGV4aXQgbGF0ZW5jeQo+
ID4gYW5kIHdoZW4geW91IGltcGxlbWVudCB0aGF0LCB3aGljaCBpIGRpZCAoYmVmb3JlIGtub3dp
bmcgdGhlIGFjdHVhbAo+ID4gc3BlYykgdGhlbiBpdCB3b3Jrcy4uLgo+ID4KPiA+ID4gPiBJdCdz
IGJlZW4gZml2ZSBtb250aHMuLi4KPiA+ID4KPiA+ID4gSSBhcG9sb2dpemUgZm9yIHRoZSBkZWxh
eS4gIEFTUE0gaXMgYSBzdWJ0bGUgYXJlYSBvZiBQQ0llLCB0aGUgTGludXgKPiA+ID4gY29kZSBp
cyBjb21wbGljYXRlZCwgYW5kIHdlIGhhdmUgYSBsb25nIGhpc3Rvcnkgb2YgaXNzdWVzIHdpdGgg
aXQuICBJCj4gPiA+IHdhbnQgdG8gZml4IHRoZSBwcm9ibGVtLCBidXQgSSB3YW50IHRvIG1ha2Ug
c3VyZSB3ZSBkbyBpdCBpbiBhIHdheQo+ID4gPiB0aGF0IG1hdGNoZXMgdGhlIHNwZWMgc28gdGhl
IGZpeCBhcHBsaWVzIHRvIGFsbCBzeXN0ZW1zLiAgSSBkb24ndCB3YW50Cj4gPiA+IGEgbWFnaWMg
Zml4IHRoYXQgZml4ZXMgeW91ciBzeXN0ZW0gaW4gYSB3YXkgSSBkb24ndCBxdWl0ZSB1bmRlcnN0
YW5kLgo+ID4KPiA+ID4gT2J2aW91c2x5ICp5b3UqIHVuZGVyc3RhbmQgdGhpcywgc28gaG9wZWZ1
bGx5IGl0J3MganVzdCBhIG1hdHRlciBvZgo+ID4gPiBwb3VuZGluZyBpdCB0aHJvdWdoIG15IHRo
aWNrIHNrdWxsIDopCj4gPgo+ID4gSSBvbmx5IHVuZGVyc3RhbmQgd2hhdCBJJ3ZlIGJlZW4gZm9y
Y2VkIHRvIHVuZGVyc3RhbmQgLSBhbmQgSSBkbwo+ID4gbGV2ZXJhZ2UgdGhlIGV4aXN0aW5nIGNv
ZGUgd2l0aG91dAo+ID4ga25vd2luZyB3aGF0IGl0IGRvZXMgdW5kZXJuZWF0aCwgSSBvbmx5IGxv
b2sgYXQgdGhlIGxpbmtzIG1heGltdW0KPiA+IGxhdGVuY3kgYW5kIG1ha2Ugc3VyZSB0aGF0IEkg
a2VlcAo+ID4gdGhlIG1heGltdW0gbGF0ZW5jeSBhbG9uZyB0aGUgcGF0aCBhbmQgbm90IGp1c3Qg
bGluayBmb3IgbGluawo+ID4KPiA+IG9uY2UgeW91IHJlYWxpc2UgdGhhdCB0aGUgbWF4IGFsbG93
ZWQgbGF0ZW5jeSBpcyBidWZmZXIgZGVwZW5kZW50IC0KPiA+IHRoZW4gdGhpcyBiZWNvbWVzIG9i
dmlvdXNseSBjb3JyZWN0LAo+ID4gYW5kIHRoZW4gdGhlIHBjaWUgc3BlYyBzaG93ZWQgaXQgYXMg
YmVpbmcgY29ycmVjdCBhcyB3ZWxsLi4uIHNvLi4uCj4gPgo+ID4KPiA+ID4gPiA+IFsxXSBodHRw
czovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvYXR0YWNobWVudC5jZ2k/aWQ9MjkzMDQ3Cj4gPiA+ID4g
PiBbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcGNpLzIwMjAxMDA3MTMyODA4LjY0
NzU4OS0xLWlhbi5rdW1saWVuQGdtYWlsLmNvbS8KPiA+ID4gPiA+IFszXSBodHRwczovL2J1Z3pp
bGxhLmtlcm5lbC5vcmcvYXR0YWNobWVudC5jZ2k/aWQ9MjkyOTU1Cj4gPiA+ID4gPiBbNF0gaHR0
cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL2F0dGFjaG1lbnQuY2dpP2lkPTI5Mjk1Nwo+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSWFuIEt1bWxpZW4gPGlhbi5rdW1saWVuQGdt
YWlsLmNvbT4KPiA+ID4gPiA+ID4gVGVzdGVkLWJ5OiBLYWktSGVuZyBGZW5nIDxrYWkuaGVuZy5m
ZW5nQGNhbm9uaWNhbC5jb20+Cj4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gPiAgZHJpdmVycy9w
Y2kvcGNpZS9hc3BtLmMgfCAyMiArKysrKysrKysrKysrKy0tLS0tLS0tCj4gPiA+ID4gPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiA+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL3BjaWUvYXNwbS5jIGIvZHJp
dmVycy9wY2kvcGNpZS9hc3BtLmMKPiA+ID4gPiA+ID4gaW5kZXggMjUzYzMwY2MxOTY3Li5jMDNl
YWQwZjEwMTMgMTAwNjQ0Cj4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvcGNpL3BjaWUvYXNwbS5j
Cj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvcGNpL3BjaWUvYXNwbS5jCj4gPiA+ID4gPiA+IEBA
IC00MzQsNyArNDM0LDcgQEAgc3RhdGljIHZvaWQgcGNpZV9nZXRfYXNwbV9yZWcoc3RydWN0IHBj
aV9kZXYgKnBkZXYsCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ICBzdGF0aWMgdm9pZCBwY2llX2Fz
cG1fY2hlY2tfbGF0ZW5jeShzdHJ1Y3QgcGNpX2RldiAqZW5kcG9pbnQpCj4gPiA+ID4gPiA+ICB7
Cj4gPiA+ID4gPiA+IC0gICAgIHUzMiBsYXRlbmN5LCBsMV9zd2l0Y2hfbGF0ZW5jeSA9IDA7Cj4g
PiA+ID4gPiA+ICsgICAgIHUzMiBsYXRlbmN5LCBsMV9tYXhfbGF0ZW5jeSA9IDAsIGwxX3N3aXRj
aF9sYXRlbmN5ID0gMDsKPiA+ID4gPiA+ID4gICAgICAgc3RydWN0IGFzcG1fbGF0ZW5jeSAqYWNj
ZXB0YWJsZTsKPiA+ID4gPiA+ID4gICAgICAgc3RydWN0IHBjaWVfbGlua19zdGF0ZSAqbGluazsK
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gQEAgLTQ1NiwxMCArNDU2LDE0IEBAIHN0YXRpYyB2b2lk
IHBjaWVfYXNwbV9jaGVja19sYXRlbmN5KHN0cnVjdCBwY2lfZGV2ICplbmRwb2ludCkKPiA+ID4g
PiA+ID4gICAgICAgICAgICAgICBpZiAoKGxpbmstPmFzcG1fY2FwYWJsZSAmIEFTUE1fU1RBVEVf
TDBTX0RXKSAmJgo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAobGluay0+bGF0ZW5jeV9k
dy5sMHMgPiBhY2NlcHRhYmxlLT5sMHMpKQo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAg
ICAgbGluay0+YXNwbV9jYXBhYmxlICY9IH5BU1BNX1NUQVRFX0wwU19EVzsKPiA+ID4gPiA+ID4g
Kwo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgIC8qCj4gPiA+ID4gPiA+ICAgICAgICAgICAgICAg
ICogQ2hlY2sgTDEgbGF0ZW5jeS4KPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgKiBFdmVyeSBz
d2l0Y2ggb24gdGhlIHBhdGggdG8gcm9vdCBjb21wbGV4IG5lZWQgMQo+ID4gPiA+ID4gPiAtICAg
ICAgICAgICAgICAqIG1vcmUgbWljcm9zZWNvbmQgZm9yIEwxLiBTcGVjIGRvZXNuJ3QgbWVudGlv
biBMMHMuCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICoKPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAgKiBQQ0llIHI1LjAsIHNlYyA1LjQuMS4yLjIgc3RhdGVzOgo+ID4gPiA+ID4gPiArICAg
ICAgICAgICAgICAqIEEgU3dpdGNoIGlzIHJlcXVpcmVkIHRvIGluaXRpYXRlIGFuIEwxIGV4aXQg
dHJhbnNpdGlvbiBvbiBpdHMKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgKiBVcHN0cmVhbSBQ
b3J0IExpbmsgYWZ0ZXIgbm8gbW9yZSB0aGFuIDEgzrxzIGZyb20gdGhlIGJlZ2lubmluZyBvZiBh
bgo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAqIEwxIGV4aXQgdHJhbnNpdGlvbiBvbiBhbnkg
b2YgaXRzIERvd25zdHJlYW0gUG9ydCBMaW5rcy4KPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAg
Kgo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAqIFRoZSBleGl0IGxhdGVuY2llcyBmb3IgTDEg
c3Vic3RhdGVzIGFyZSBub3QgYWR2ZXJ0aXNlZAo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAq
IGJ5IGEgZGV2aWNlLiAgU2luY2UgdGhlIHNwZWMgYWxzbyBkb2Vzbid0IG1lbnRpb24gYSB3YXkK
PiA+ID4gPiA+ID4gQEAgLTQ2OSwxMSArNDczLDEzIEBAIHN0YXRpYyB2b2lkIHBjaWVfYXNwbV9j
aGVja19sYXRlbmN5KHN0cnVjdCBwY2lfZGV2ICplbmRwb2ludCkKPiA+ID4gPiA+ID4gICAgICAg
ICAgICAgICAgKiBMMSBleGl0IGxhdGVuY2llcyBhZHZlcnRpc2VkIGJ5IGEgZGV2aWNlIGluY2x1
ZGUgTDEKPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgKiBzdWJzdGF0ZSBsYXRlbmNpZXMgKGFu
ZCBoZW5jZSBkbyBub3QgZG8gYW55IGNoZWNrKS4KPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAg
Ki8KPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICBsYXRlbmN5ID0gbWF4X3QodTMyLCBsaW5rLT5s
YXRlbmN5X3VwLmwxLCBsaW5rLT5sYXRlbmN5X2R3LmwxKTsKPiA+ID4gPiA+ID4gLSAgICAgICAg
ICAgICBpZiAoKGxpbmstPmFzcG1fY2FwYWJsZSAmIEFTUE1fU1RBVEVfTDEpICYmCj4gPiA+ID4g
PiA+IC0gICAgICAgICAgICAgICAgIChsYXRlbmN5ICsgbDFfc3dpdGNoX2xhdGVuY3kgPiBhY2Nl
cHRhYmxlLT5sMSkpCj4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICBsaW5rLT5hc3Bt
X2NhcGFibGUgJj0gfkFTUE1fU1RBVEVfTDE7Cj4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgbDFf
c3dpdGNoX2xhdGVuY3kgKz0gMTAwMDsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICBpZiAobGlu
ay0+YXNwbV9jYXBhYmxlICYgQVNQTV9TVEFURV9MMSkgewo+ID4gPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgbGF0ZW5jeSA9IG1heF90KHUzMiwgbGluay0+bGF0ZW5jeV91cC5sMSwgbGlu
ay0+bGF0ZW5jeV9kdy5sMSk7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBsMV9t
YXhfbGF0ZW5jeSA9IG1heF90KHUzMiwgbGF0ZW5jeSwgbDFfbWF4X2xhdGVuY3kpOwo+ID4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgaWYgKGwxX21heF9sYXRlbmN5ICsgbDFfc3dpdGNo
X2xhdGVuY3kgPiBhY2NlcHRhYmxlLT5sMSkKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgbGluay0+YXNwbV9jYXBhYmxlICY9IH5BU1BNX1NUQVRFX0wxOwo+ID4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgbDFfc3dpdGNoX2xhdGVuY3kgKz0gMTAwMDsKPiA+
ID4gPiA+ID4gKyAgICAgICAgICAgICB9Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ICAgICAgICAg
ICAgICAgbGluayA9IGxpbmstPnBhcmVudDsKPiA+ID4gPiA+ID4gICAgICAgfQo+ID4gPiA+ID4g
PiAtLQo+ID4gPiA+ID4gPiAyLjI5LjEKPiA+ID4gPiA+ID4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
