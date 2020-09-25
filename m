Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F686279D8C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Sep 2020 04:24:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2D8A5204E9;
	Sun, 27 Sep 2020 02:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S6iwn0ZpLrpV; Sun, 27 Sep 2020 02:24:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ED15A204EB;
	Sun, 27 Sep 2020 02:24:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA9CE1BF263
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 23:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9884687671
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 23:18:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r8LjQsSNmLRs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Sep 2020 23:18:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE68D8766F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 23:18:25 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601075904;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=THHG60vVT2GrAMP4Wtzq9pBcwfnDrl5OpJNjgCkwxb4=;
 b=Uzw7gHK1j5kFGrBd8pybc+H3tK1h78cokH/eBtOkAtSFwzSUyXrmN2KMkrVJvJGktsacDv
 s5nVveW9Db5FeMRlI9xw9mGd99gfc4SPsjR3y/CleIFoPxk10arm2GIygcxrXauntxBnrp
 bnb26aFCUkMslD5MmR1/V4f4SG5gegI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-480-ByX51aD8NXaT2E6DKsI_FQ-1; Fri, 25 Sep 2020 19:18:22 -0400
X-MC-Unique: ByX51aD8NXaT2E6DKsI_FQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A64901074642;
 Fri, 25 Sep 2020 23:18:19 +0000 (UTC)
Received: from [10.10.114.192] (ovpn-114-192.rdu2.redhat.com [10.10.114.192])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A17A555785;
 Fri, 25 Sep 2020 23:18:12 +0000 (UTC)
From: Nitesh Narayan Lal <nitesh@redhat.com>
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20200925202307.GA2456332@bjorn-Precision-5520>
 <256490f0-0762-447c-a7be-0e5a6bb04fc4@redhat.com>
Autocrypt: addr=nitesh@redhat.com; prefer-encrypt=mutual; keydata=
 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
 VujM7c/b4pps
Organization: Red Hat Inc,
Message-ID: <0f19925c-a6f7-fbab-46c9-f3af389708d2@redhat.com>
Date: Fri, 25 Sep 2020 19:18:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <256490f0-0762-447c-a7be-0e5a6bb04fc4@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nitesh@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Sun, 27 Sep 2020 02:24:07 +0000
Subject: Re: [Intel-wired-lan] [PATCH v3 4/4] PCI: Limit
 pci_alloc_irq_vectors() to housekeeping CPUs
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
Cc: juri.lelli@redhat.com, peterz@infradead.org, linux-pci@vger.kernel.org,
 sassmann@redhat.com, vincent.guittot@linaro.org, hch@infradead.org,
 mingo@redhat.com, intel-wired-lan@lists.osuosl.org, thomas.lendacky@amd.com,
 lgoncalv@redhat.com, frederic@kernel.org, jlelli@redhat.com, jiri@nvidia.com,
 bhelgaas@google.com, mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, mtosatti@redhat.com,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8345018870638854083=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8345018870638854083==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="UJPvCisAnydiZtsGTUWqZIh1xD57XzX70"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--UJPvCisAnydiZtsGTUWqZIh1xD57XzX70
Content-Type: multipart/mixed; boundary="bWcCaigCe4GqbWScTss64HNyTUxSRnz7g"

--bWcCaigCe4GqbWScTss64HNyTUxSRnz7g
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 9/25/20 5:38 PM, Nitesh Narayan Lal wrote:
> On 9/25/20 4:23 PM, Bjorn Helgaas wrote:

[...]

>>> +=09/*
>>> +=09 * If we have isolated CPUs for use by real-time tasks, to keep the
>>> +=09 * latency overhead to a minimum, device-specific IRQ vectors are m=
oved
>>> +=09 * to the housekeeping CPUs from the userspace by changing their
>>> +=09 * affinity mask. Limit the vector usage to keep housekeeping CPUs =
from
>>> +=09 * running out of IRQ vectors.
>>> +=09 */
>>> +=09if (hk_cpus < num_online_cpus()) {
>>> +=09=09if (hk_cpus < min_vecs)
>>> +=09=09=09max_vecs =3D min_vecs;
>>> +=09=09else if (hk_cpus < max_vecs)
>>> +=09=09=09max_vecs =3D hk_cpus;
>>> +=09}
>> It seems like you'd want to do this inside
>> pci_alloc_irq_vectors_affinity() since that's an exported interface,
>> and drivers that use it will bypass the limiting you're doing here.
> Good point, few drivers directly use this.
> I took a quick look and it seems I may also have to take the pre and the
> post vectors into consideration.
>

It seems my initial interpretation was incorrect, reserved vecs (pre+post)
should always be less than the min_vecs.
So, FWIU we should be fine in limiting the max_vecs.

I can make this change and do a repost.

Do you have any other concerns with this patch or with any of the other
patches?

[...]

--=20
Nitesh


--bWcCaigCe4GqbWScTss64HNyTUxSRnz7g--

--UJPvCisAnydiZtsGTUWqZIh1xD57XzX70
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkXcoRVGaqvbHPuAGo4ZA3AYyozkFAl9uerMACgkQo4ZA3AYy
oznGGRAAyAHwz4liALwOOlzRaFHJir9F5v1Y1ky1fAOxjJS8K5aAxhXZFeG+ipp0
vh6SBwUeMv12J9+qqzqLr81Sjg46qT9YVacJdUms8pPL54mJ6W78cYtl0+1dhLh8
8Wjq6t4i89/yEoneFkRcCGejHSIwyZkEwPcSI9h/+TgUo4T3H8WFDvqu3BBNgssl
BcDZMpFxNPhH9rkezDzi3MzTzCLlt+9Gno51HsDmd/cyBNna38/0jwxY4E1VsvJV
LU36sp6flfkrVny3QvwsJLyAIubRBWHFQX0oDvgwI4Gfx3N5dafM0JbEPN9cHNEU
hWiBn27+m1GxMsvGHH6/4iJ2/58bNV1xyuuiyXYp1319nar3x6oIhpAU+b5I+nMV
vqqCorsWjWb3VFZnuTRsHpntqPFGIFMWO+OKBpvszh3ntobDHvZGuneqTOEXp/HA
jfUvDNxtvK913hO51VkHUuAraoMGx8B7uF5XTpm2xavm7GzrS+BTUyxdhP7CrjhO
YTnqucbXkIyIjXyY8b9uRPv8NyfM7FM7mFxe8WUQYYmRIrWr5q4mm67fHSxOrRwD
WLvehhTVeMus7Qa+j+e3GJ1yPKOhMCEy57Wq/1nvSzFMMVBWF/uyFKaO+Y32Mg5K
/YcfFN+06t8aNe2U18mkKqEnsmUEl4LQAC6BYru0o421AaKJNH8=
=iSBU
-----END PGP SIGNATURE-----

--UJPvCisAnydiZtsGTUWqZIh1xD57XzX70--


--===============8345018870638854083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8345018870638854083==--

