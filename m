Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E6F266A6B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 23:56:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6AC192E2CE;
	Fri, 11 Sep 2020 21:56:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vAPxwn9D7Xpm; Fri, 11 Sep 2020 21:56:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2DC202E2CD;
	Fri, 11 Sep 2020 21:56:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CFF01BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 21:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 48EC587466
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 21:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q3HbAGj8ZHdp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 21:56:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com
 [148.163.129.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BFD0F87581
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 21:56:04 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.65.62])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 3866160094; Fri, 11 Sep 2020 21:56:04 +0000 (UTC)
Received: from us4-mdac16-49.ut7.mdlocal (unknown [10.7.66.16])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 37C068009B; 
 Fri, 11 Sep 2020 21:56:04 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.40])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id C0806280066;
 Fri, 11 Sep 2020 21:56:03 +0000 (UTC)
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 6CD96BC0076;
 Fri, 11 Sep 2020 21:56:03 +0000 (UTC)
Received: from [10.17.20.203] (10.17.20.203) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 11 Sep
 2020 22:55:58 +0100
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-12-jesse.brandeburg@intel.com>
 <227d2fe4-ddf8-89c9-b80b-142674c2cca0@solarflare.com>
 <20200911144207.00005619@intel.com>
From: Edward Cree <ecree@solarflare.com>
Message-ID: <e2e637ae-8cda-c9a4-91ce-93dbd475fc0c@solarflare.com>
Date: Fri, 11 Sep 2020 22:55:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200911144207.00005619@intel.com>
Content-Language: en-GB
X-Originating-IP: [10.17.20.203]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.6.1012-25660.000
X-TM-AS-Result: No-3.934400-8.000000-10
X-TMASE-MatchedRID: VPleTT1nwdTmLzc6AOD8DfHkpkyUphL9ekMgTOQbVFsZSz1vvG+0mjGE
 TFerrMsjdmjn29714VMa7iGxrZ1cFjPpmmeZK64q4h8r8l3l4eZXLrDwmXJ6bwQsw9A3PIlL0HC
 C1wXiE/J1C0eA/+ELkLyoNIcZ8C1BHJosEA366STlAR4uQ+nossHWhOU1PTVYdz3bnI4leYVxbj
 2K9xHJ+OfOVcxjDhcwIC0OoeD/hCbQLWxBF9DMQcRB0bsfrpPInxMyeYT53RnUvuI6DlMU3vWBK
 +akkoq4N7J9wpCyXYjV5wLYuJQTvYCxQx/QhvMkBcD5rV409SHT2My6xGU4Bqmrf9FYIKdJ/xqW
 /R9x9c7UNewp4E2/TgSpmVYGQlZ3sxk1kV1Ja8cbbCVMcs1jUlZca9RSYo/b
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--3.934400-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.6.1012-25660.000
X-MDID: 1599861364-TiHtXqQNxaDD
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 11/11]
 drivers/net/ethernet: clean up mis-targeted comments
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTEvMDkvMjAyMCAyMjo0MiwgSmVzc2UgQnJhbmRlYnVyZyB3cm90ZToKPiBUaGFua3MgRWQs
IEkgdGhpbmsgSSBtaWdodCBqdXN0IHJlbW92ZSB0aGUgLyoqIG9uIHRoYXQgZnVuY3Rpb24gdGhl
bgo+IChyZW1vdmluZyBpdCBmcm9tIGtkb2MgcHJvY2Vzc2luZykKSSBkdW5ubywgdGhhdCBtZWFu
cwphKSBrZXJuZWxkb2Mgd29uJ3QgZ2VuZXJhdGUgaHRtbCBmb3IgdGhpcyBzdHJ1Y3QKYikgbmV3
IGFkZGl0aW9ucyB0byB0aGUgc3RydWN0IHdpdGhvdXQgY29ycmVzcG9uZGluZyBrZXJuZWxkb2Mg
d29uJ3QKwqDCoCBnZW5lcmF0ZSB3YXJuaW5ncwrCoGJvdGggb2Ygd2hpY2ggYXJlIG5vdCBpZGVh
bCBvdXRjb21lcy4KSSByZWFsaXNlIHRoZXJlJ3MgdmFsdWUgaW4gaGF2aW5nIHRvdGFsbHkgd2Fy
bmluZy1jbGVhbiBjb2RlLCBidXQgaW4KwqB0aGlzIGNhc2UgSSB0aGluayB0aGlzIG9uZSB3YXJu
aW5nLCBldmVuIHRob3VnaCBpdCdzIGluZGljYXRpbmcgYQrCoHRvb2xjaGFpbiBwcm9ibGVtIHJh
dGhlciB0aGFuIGEgY29kZWJhc2UgcHJvYmxlbSwgc2hvdWxkIGJldHRlciBzdGF5CsKgKGlmIG9u
bHkgdG8gcHV0IHByZXNzdXJlIG9uIHRoZSB0b29sY2hhaW4gdG8gZml4IGl0KS4KT3RoZXJ3aXNl
LCB3aGVuIGFuZCBpZiB0aGUgdG9vbGNoYWluIGlzIGZpeGVkLCB3aGF0J3MgdGhlIGNoYW5jZSB3
ZSdsbArCoHJlbWVtYmVyIHRvIHB1dCB0aGUgLyoqIGJhY2s/CgpUaGF0J3MganVzdCBteSBvcGlu
aW9uLCB0aG91Z2g7IEkgd29uJ3QgYmxvY2sgcGF0Y2hlcyB0aGF0IGRpc2FncmVlLgoKLWVkCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
