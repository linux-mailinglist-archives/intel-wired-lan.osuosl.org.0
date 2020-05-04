Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 473121C3CBF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 May 2020 16:20:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE64F88039;
	Mon,  4 May 2020 14:20:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xgnJHWUFLuKU; Mon,  4 May 2020 14:20:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F2F5F87D8B;
	Mon,  4 May 2020 14:20:20 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7CAB91BF306
 for <intel-wired-lan@osuosl.org>; Mon,  4 May 2020 14:20:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 776AB8835D
 for <intel-wired-lan@osuosl.org>; Mon,  4 May 2020 14:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UR4qsifs8wkC for <intel-wired-lan@osuosl.org>;
 Mon,  4 May 2020 14:20:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1763D87E9E
 for <intel-wired-lan@osuosl.org>; Mon,  4 May 2020 14:20:17 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5af087.dynamic.kabel-deutschland.de
 [95.90.240.135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 002D82002EE36;
 Mon,  4 May 2020 16:20:14 +0200 (CEST)
To: Dan Williams <dwilliams@nextdroid.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <CAGrNP8nfqAZnEoOBsrxrsvszw7T5pdKHG4mt6fVcKB6iigV_BA@mail.gmail.com>
 <87zhaswn5t.fsf@intel.com>
 <CAGrNP8=qr3_ZPL7c4oWz0L6hzLSSHjh3iWa52VsUTmJjfUqxdw@mail.gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <92e434ac-6c7d-d51b-20c3-fc0a2bfda21f@molgen.mpg.de>
Date: Mon, 4 May 2020 16:20:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAGrNP8=qr3_ZPL7c4oWz0L6hzLSSHjh3iWa52VsUTmJjfUqxdw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Does the 'igb` kernel module support setting
 2-Tuple filters (aka `--config-ntuple`) on a i210 NIC?
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
Cc: Daniel Gandhi <dgandhi@nextdroid.com>, intel-wired-lan@osuosl.org,
 Nick Rizzo <nrizzo@nextdroid.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBEYW4sCgoKUGxlYXNlIG9ubHkgc2VuZCBwbGFpbiB0ZXh0IG1lc3NhZ2VzIHdpdGggbm8g
SFRNTCBwYXJ0IHRvIG1haWxpbmcgbGlzdHMuCgoKQW0gMDQuMDUuMjAgdW0gMTU6NTggc2Nocmll
YiBEYW4gV2lsbGlhbXM6Cgo+Pj4gV2UgaGF2ZSBhIGNvbXB1dGVyIGxvZ2dpbmcgYSBoaWdoIHJh
dGUgb2YgZXRoZXJuZXQgcGFja2V0cyAoIDI1awo+Pj4+IHBhY2tldHMvc2VjIH43MCBNYi9zZWMp
OyAgIEJ1dCB3ZSdyZSBoYXZpbmcgdHJvdWJsZSBjb252aW5jaW5nIAo+Pj4+IHRoZSBoYXJkd2Fy
ZSB0byByZWNlaXZlIGFsbCBvZiB0aGVzZSBwYWNrZXRzLCBhdCBhIHN1c3RhaW5lZAo+Pj4+IHJh
dGUgLS0gc3BlY2lmaWNhbGx5IHdlJ3JlIGRyb3BwaW5nIHBhY2tldHMgd2hpbGUgcHJvY2Vzc2lu
Zwo+Pj4+IHRocm91Z2ggdGhlIGtlcm5lbCBsYXllcnMuIFdlJ3JlIGN1cnJlbnRseSBhdHRlbXB0
aW5nIHRvCj4+Pj4gb3B0aW1pemUgdGhlIG5ldHdvcmsgc3RhY2ssICBidXQgd2UncmUgaGF2aW5n
IHRyb3VibGUgc2V0dGluZwo+Pj4+IHRoZSBkcml2ZXIgcGFyYW1ldGVycy4uLiB3aGljaCBpcyB3
aGF0IHRoaXMgbWVzc2FnZSBpcyBhbGwKPj4+PiBhYm91dC4KPj4gCj4+IFRoYXQncyB3ZWlyZC4g
VGhhdCBwYWNrZXQgcmF0ZSBpcyBub3QgKnRoYXQqIGhpZ2gsIHRoZSBMaW51eCBrZXJuZWwKPj4g
c2hvdWxkIGJlIGFibGUgdG8gaGFuZGxlIHRoYXQgZmluZS4KPiAKPj4gQ2FuIHlvdSBnaXZlIG1v
cmUgZGV0YWlscyBvZiB0aGUgd29ya2xvYWQgeW91IGFyZSBydW5uaW5nPwo+IAo+IE9rYXksIGlu
IG1vcmUgZGV0YWlsOiB3ZSBoYXZlIHR3byBncm91cHMgb2YgaW5jb21pbmcgc3RyZWFtczogIChm
b3IgCj4gdGhlIG1pbmltdW0gc2V0dXAgdG8gY2F1c2UgYSBwcm9ibGVtKSAtIDR4IENhbWVyYSBT
dHJlYW1zICBlYWNoIAo+IHRyYW5zbWl0cyBhIDMuMm1iIGltYWdlIGV2ZXJ5IC4xIHMsIHNwbGl0
IGludG8ganVtYm8gZnJhbWVzIChtdHUgaXMgCj4gc2V0IHRvIHRoZSBmdWxsIDkwMDApIC0gQ29u
c3RhbnQgc3RyZWFtIG9mIGRhdGEgZnJvbSBhIExpZGFyIGF0IDE4ayAKPiBwYWNrZXRzIC8gc2Vj
LiAgRWFjaCBwYWNrZXQgaXMgMTIwNiBieXRlcyBsb25nLiAtIEJvdGggc3RyZWFtcyAKPiBjb250
aW51ZSBzdGVhZHktc3RhdGUsIGluZGVmaW5pdGVseSAod2UgaGF2ZSB2ZXJpZmllZCBiZWhhdmlv
ciBvdXQKPiB0byA0IGhvdXJzIHNvIGZhcikKPiAKPiBXZSByZWNlaXZlIGFsbCBvZiB0aGVzZSBv
dmVyIGV0aGVybmV0LCBhbmQgcm91dGVkIHRvIGEgc2luZ2xlCj4gbmV0d29yayBwb3J0IG9uIGEg
c2luZ2xlIE5JQy4gICBUaGUgZHJpdmVyIGlzIHRoZSAnaWdiJyBrZXJuZWwKPiBtb2R1bGUsIGFz
IHN1cHBsaWVkIGZyb20gdWJ1bnR1LiBUaGUgT1MgaXMgVWJ1bnR1IDE2LjA0IExUUyB3aXRoIGEg
Cj4gNC4xNS4wLTg4LWxvd2xhdGVuY3kga2VybmVsLgoKVG8gZGVidWcgYWxyZWFkeSBmaXhlZCBw
cm9ibGVtcywgcGxlYXNlIHRyeSB0byByZXByb2R1Y2UgdGhpcyB3aXRoCmN1cnJlbnQgc29mdHdh
cmUsIGZvciBleGFtcGxlIFVidW50dSAyMC4wNCBvciBhIG1haW5saW5lIGtlcm5lbCBidWlsZC4K
ClvigKZdCgoKS2luZCByZWdhcmRzLAoKUGF1bAoKClsxXTogaHR0cHM6Ly93aWtpLnVidW50dS5j
b20vS2VybmVsL01haW5saW5lQnVpbGRzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
